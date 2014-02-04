module ActiveNetsuite

class SearchRecord
  extend Forwardable
  include Enumerable

  attr_accessor :record_class

  def_delegators :response, :page_index, :page_size, :search_id, :total_pages,
    :total_records, :has_more?, :next

  def each
    response.each do |result|
      yield result if block_given?
    end
  end

  def where(*args)
    dup.send(:add, *args)
  end

  def find_by(*args)
    where(*args).first
  end

  def to_a
    response.to_a
  end

  def inactive
    dup.send(:add, isInactive: true)
  end

  def active
    dup.send(:add, isInactive: false)
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
    #"::#{self.class.to_s.gsub(/SearchBasic$/, '')}".constantize
  end
end

end

