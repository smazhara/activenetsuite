module ActiveNetsuite

class WriteResponse
  extend Forwardable

  alias_method :ref, :baseRef

  def_delegators :status, :success?, :code, :message, :dup_item?, :dup_rcrd?,
    :dup_entity?, :dup_vendor_name?, :rcrd_type_reqd?, :user_error?,
    :duplicate?

  def_delegators :ref, :internal_id, :external_id, :type
end

end

