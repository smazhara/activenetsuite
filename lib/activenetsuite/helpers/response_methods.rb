module ActiveNetsuite

module ResponseMethods
  extend Forwardable

  def res
    writeResponse
  end

  def_delegators :res, :status, :ref

  def_delegators :status,
    :success?, :failure?, :code, :message, :dup_item?, :dup_rcrd?,
    :dup_entity?, :dup_vendor_name?, :rcrd_type_reqd?, :user_error?,
    :duplicate?

  def_delegators :ref, :internal_id, :external_id, :type
end

end

