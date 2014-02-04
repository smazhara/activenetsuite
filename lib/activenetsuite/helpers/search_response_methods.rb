module ActiveNetsuite

module SearchResponseMethods
  include Enumerable
  extend Forwardable

  def_delegators :records, :[]

  def_delegators :result, :page_index, :page_size, :search_id, :total_pages,
    :total_records, :has_more?

  def each
    records.each do |record|
      yield record if block_given?
    end
  end

  def update
    Record.update(to_a)
  end

  def inactivate
    map(&:inactivate)
  end

  def active
    select(&:active?)
  end

  def inactive
    select(&:inactive?)
  end

  def success?
    status.xmlattr_isSuccess
  end

  def next
    client.search_next(self, page_index + 1)
  end

  private

  def client
    Record.client
  end

  def result
    searchResult
  end

  def status
    searchResult.status
  end

  def records
    searchResult.recordList
  end
end

end

