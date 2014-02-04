module ActiveNetsuite

class GetDeletedResult
  extend Forwardable

  def_delegators :status, :success?, :code, :message

  def records
    deletedRecordList
  end
end

end
