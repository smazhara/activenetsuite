module ActiveNetsuite

class GetListResponse
  include Enumerable
  extend Forwardable

  def_delegators :records, :[]

  alias_method :records, :readResponseList

  def each
    records.each do |record|
      yield record if block_given?
    end
  end
end

end
