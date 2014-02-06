module ActiveNetsuite

class Record
  include MethodInflector

  def to_s
    instance_variables.
      map do |var|
        [var, instance_variable_get(var)]
      end.
      select do |var, val|
        val
      end
  end

  class << self
    def client
      @@client ||= nil
    end

    def client=(client)
      @@client = client
    end

    def type
      type = to_s.split('::').last
      type[0,1].downcase + type[1..-1]
    end

    def find_by_internal_id(id)
      find_by_id(internal_id: id)
    end

    def find(id)
      find_by_id(internal_id: id) or raise_not_found_error(internal_id: id)
    end
    alias_method :get, :find

    def find_by_external_id(id)
      find_by_id(external_id: id)
    end

    def find_by_id(args)
      client.get(ref(args)).record
    end

    def basic_search_class
      "::#{to_s}SearchBasic".constantize
    end

    def search_next(search_result, page_index)
      client.search_next(search, page_index)
    end

    def where(*args)
      search.where(*args)
    end

    def find_by(*args)
      search.find_by(*args)
    end

    def all
      search.response
    end

    def inactive
      search.inactive
    end

    def active
      search.active
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
      op = ('ActiveNetsuite::SearchDateFieldOperator::' + op.to_s.camelize).constantize
      val = ('ActiveNetsuite::SearchDate::' + val.to_s.camelize).constantize
      search_value = SearchDateField.new
      search_value.xmlattr_operator = op
      search_value.predefinedSearchValue = val

      search_type = SearchEnumMultiSelectField.new
      search_type.xmlattr_operator = SearchEnumMultiSelectFieldOperator::AnyOf
      search_type.searchValue = type

      get_deleted_filter = GetDeletedFilter.new(search_value, search_type)
      client.get_deleted(get_deleted_filter)
    end

    # Convert Hash or Id to RecordRef
    # @param arg Hash or String
    # @return RecordRef
    # @example
    #   ref = Record.arg(12)
    #   ref.class # => RecordRef
    #   ref.type # => 'record'
    #   ref.internal_id # => 12
    #
    #   ref = Record.arg(external_id: 12)
    #   ref.external_id # => 12
    def ref(arg)
      ref = RecordRef.new
      ref.type = type
      arg = {internal_id: arg} unless arg.is_a?(Hash)
      ref.internal_id = arg[:internal_id]
      ref.external_id = arg[:external_id]
      ref
    end

    def raise_not_found_error(arg)
      raise NotFoundError, not_found_error_message(ref(arg))
    end

    private

    def search
      search = basic_search_class.new
      search.record_class = self
      search
    end

    def refs(objects)
      objects.map do |object|
        case object
        when RecordRef
          object
        when Record
          object.ref
        when String, Integer
          ref(object)
        end
      end
    end

    def not_found_error_message(ref)
      "type: #{ref.type}, internal_id: #{ref.internal_id}, " \
      "external_id: #{ref.external_id}"
    end
  end

  def add
    res = client.add(self)
    if res.success?
      self.internal_id = res.internal_id
    end
    res
  end

  def update
    client.update(self)
  end

  def delete
    res = client.delete(ref)
    if res.success?
      self.internal_id = nil
    end
    res
  end

  def client
    self.class.client
  end

  def load
    return self if loaded?

    record = find_by_id
    record.getters.each do |getter|
      send :"#{getter}=", record.send(getter)
    end
    @loaded = true
    self
  end

  def loaded?
    !!@loaded
  end

  def active?
    !inactive?
  end

  def active=(value)
    self.is_inactive = !value
  end

  def inactive=(value)
    self.is_inactive = !!value
  end

  def activate
    self.active = true
    self
  end

  def inactivate
    self.active = false
    self
  end

  def ref
    self.class.ref(internal_id)
  end

  def setters
    public_methods(false).grep(/=$/)
  end

  def getters
    setters.map(&:to_s).map(&:chop).map(&:to_sym)
  end

  private

  def raise_not_found_error
    self.class.raise_not_found_error(ref)
  end

  def not_found_error_message
    self.class.not_found_error_message(ref)
  end

  def find_by_id
    by_internal_id || by_external_id or raise_not_found_error
  end

  def by_internal_id
    self.class.find_by_internal_id(internal_id) if internal_id
  end

  def by_external_id
    self.class.find_by_external_id(external_id) if external_id
  end

  def type
    self.class.type
  end
end

end

