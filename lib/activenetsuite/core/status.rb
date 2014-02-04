module ActiveNetsuite

class Status
  DUP_ITEM = 'DUP_ITEM'
  DUP_RCRD = 'DUP_RCRD'
  DUP_ENTITY = 'DUP_ENTITY'
  DUP_VENDOR_NAME = 'DUP_VENDOR_NAME'
  RCRD_TYPE_REQD = 'RCRD_TYPE_REQD'
  USER_ERROR = 'USER_ERROR'
  MAX_RCRDS_EXCEEDED = 'MAX_RCRDS_EXCEEDED'
  INVALID_INTERNALID = 'INVALID_INTERNALID'
  INVALID_FLD_VALUE = 'INVALID_FLD_VALUE'

  def success?
    xmlattr_isSuccess
  end

  def failure?
    !success?
  end

  def code
    status_detail.code if status_detail
  end

  def message
    status_detail.message if status_detail
  end

  constants.each do |constant|
    name = (constant.to_s.underscore + '?').to_sym
    value = const_get(constant)
    next unless value.is_a?(String)
    define_method name do
      code == value
    end
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
