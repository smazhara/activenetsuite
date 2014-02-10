module ActiveNetsuite

class Status
  # Make it so Status responds to error_code? style methods
  # @param [Symbol] method name
  # @return [Boolean]
  # @example
  #  status.code # => 'DUP_ITEM'
  #  status.dup_item? # => true
  #  status.cogs_error? # => false
  def method_missing(method)
    if method.to_s.end_with?('?')
      code == method.to_s.chop.upcase
    else
      super
    end
  end

  # True if status is success
  def success?
    !!xmlattr_isSuccess
  end

  # True if status is failure
  def failure?
    !success?
  end

  def code
    status_detail.code if status_detail
  end

  def message
    status_detail.message if status_detail
  end

  def duplicate?
    dup_item? || dup_rcrd? || dup_entity? || dup_vendor_name?
  end

  private

  def status_detail
    statusDetail[0] if statusDetail
  end
end

end
