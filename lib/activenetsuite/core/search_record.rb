module ActiveNetsuite

class SearchRecord
  extend Forwardable
  include Enumerable

  attr_accessor :record_class

  def_delegators :response, :page_index, :page_size, :search_id, :total_pages,
    :total_records, :more?, :next, :each, :to_a

  def where(*args)
    dup.send(:add, *args)
  end

  def find_by(*args)
    where(*args).first
  end

  def inactive
    where(isInactive: true)
  end

  def active
    where(isInactive: false)
  end

  def delete(objects)
    objects = [objects] unless objects.respond_to?(:map)
    client.delete_list(refs(objects))
  end

  def update(records)
    records = [records] unless records.respond_to?(:map)
    client.update_list(records)
  end

  def deleted(op, val)
    search_value = SearchDateField.new
    search_value.xmlattr_operator = SearchDateFieldOperator.make(op)
    search_value.predefinedSearchValue = SearchDate.make(val)

    search_type = SearchEnumMultiSelectField.new
    search_type.xmlattr_operator = SearchEnumMultiSelectFieldOperator::AnyOf
    search_type.searchValue = type

    get_deleted_filter = GetDeletedFilter.new(search_value, search_type)
    client.get_deleted(get_deleted_filter)
  end

  def response
    @response ||= client.search(self)
  end

  private

  attr_reader :method, :value, :op

  def client
    Record.client
  end

  def add(*args)
    if args.first.is_a?(Hash)
      @method, @value = args.first.flatten
      @op = :is
    end
    if args.size == 3
      @method, @op, @value = args
    end

    method = record_class.inflected_method(@method)
    send("#{method}=", search_class.new)
    unless value == true || value == false
      send(method).xmlattr_operator = search_operator
    end
    send(method).searchValue = value

    self
  end

  def search_class
    case value
    when String
      SearchStringField
    when Fixnum
      SearchLongField
    when TrueClass, FalseClass
      SearchBooleanField
    when Date, DateTime
      SearchDateField
    else
      raise ArgumentError, "Can't find search class for #{value.inspect}"
    end
  end

  def search_operator
    operator_constant_name = op.to_s.camelize
    operator_class_name = search_class.to_s + "Operator"
    "#{operator_class_name}::#{operator_constant_name}".constantize
  end

  def record_class
    @record_class
  end
end

end

