module ActiveNetsuite

class GetDeletedResult
  include Enumerable
  extend Forwardable

  def records
    deletedRecordList
  end

  def each
    records.each do |record|
      yield record if block_given?
    end
  end

  def_delegators :status, :success?
end

end

