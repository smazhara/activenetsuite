module ActiveNetsuite

class GetDeletedResult
  include Enumerable
  extend Forwardable

  def records
    deletedRecordList
  end

  def_delegators :records, :each
  def_delegators :status, :success?
end

end

