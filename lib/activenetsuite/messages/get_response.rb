module ActiveNetsuite

class GetResponse
  extend Forwardable

  alias_method :response, :readResponse

  def_delegators :response, :record, :internal_id, :external_id
  def_delegators :status, :success?, :message, :code
end

end

