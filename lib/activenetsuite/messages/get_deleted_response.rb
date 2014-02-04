module ActiveNetsuite

class GetDeletedResponse
  include Enumerable
  extend Forwardable

  alias_method :result, :getDeletedResult

  def each
    result.each do |record|
      yield record if block_given?
    end
  end

  def_delegators :result, :status
  def_delegators :status, :success?, :code, :message, :dup_item?, :dup_rcrd?,
    :dup_entity?, :dup_vendor_name?, :rcrd_type_reqd?, :user_error?,
    :duplicate?

end

end

