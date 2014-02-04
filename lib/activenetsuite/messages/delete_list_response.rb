module ActiveNetsuite

class DeleteListResponse
  include Enumerable
  extend Forwardable

  def_delegators :responses, :[]

  alias_method :responses, :writeResponseList

  def each
    responses.each do |response|
      yield response if block_given?
    end
  end
end

end

