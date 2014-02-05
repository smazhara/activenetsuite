require 'logger'
require 'net/http'
require 'net/https'
require 'soap/header/simplehandler'

module ActiveNetsuite

class Client
  attr_reader :driver

  class ActiveNetsuiteHeader < SOAP::Header::SimpleHandler
    def initialize(prefs = {})
      @prefs = self.class::DefaultPrefs.merge(prefs)
      super(XSD::QName.new(nil, self.class::Name))
    end

    def on_simple_outbound
      @prefs
    end
  end

  class SearchPreferencesHeaderHandler < ActiveNetsuiteHeader
    Name = 'searchPreferences'
    DefaultPrefs = {:bodyFieldsOnly => false, :pageSize => 25}
  end

  class PreferencesHeaderHandler < ActiveNetsuiteHeader
    Name = 'preferences'
    DefaultPrefs = {:warningAsError => false, :ignoreReadOnlyFields => true}
  end

  class PassportHeaderHandler < ActiveNetsuiteHeader
    Name = 'passport'
    DefaultPrefs = {:account => '', :email => '', :password => ''}
  end

  def logger
    @logger ||= Logger.new(STDOUT)
  end

  def initialize(config = {})
    @driver = ActiveNetsuitePortType.new(config[:endpoint_url] ||
                                   ActiveNetsuitePortType::DefaultEndpointUrl)

    if config[:role]
      role = {:xmlattr_internalId => config[:role]}
    end

    @driver.headerhandler.add(PassportHeaderHandler.new(
      email: config[:email],
      password: config[:password],
      account: config[:account_id],
      role: role
    ))
    @driver.headerhandler.add(PreferencesHeaderHandler.new)
    @driver.headerhandler.add(SearchPreferencesHeaderHandler.new)
  end

  def debug=(debug)
    @driver.wiredump_dev = ($stderr if debug)
  end

  # Low level commands
  def get(ref)
    @driver.get(GetRequest.new(ref))
  end

  def get_all(refs)
    @driver.getList(GetListRequest.new(refs))
  end

  def get_all_records(record_type)
    ref = GetAllRecord.new
    ref.xmlattr_recordType = record_type
    get_all(ref)
  end

  def get_all(ref)
    @driver.getAll(GetAllRequest.new(ref))
  end

  def add(record)
    @driver.add(AddRequest.new(record))
  end

  def add_list(list)
    @driver.addList(AddListRequest.new(list))
  end

  def update(record)
    @driver.update(UpdateRequest.new(record))
  end

  def update_list(recs)
    @driver.updateList(UpdateListRequest.new(recs))
  end

  def upsert(record)
    @driver.upsert(UpsertRequest.new(record))
  end

  def upsert_list(refs)
    @driver.upsertList(UpsertListRequest.new(refs))
  end

  def delete(ref)
    @driver.delete(DeleteRequest.new(ref))
  end

  def delete_list(refs)
    @driver.deleteList(DeleteListRequest.new(refs))
  end

  def search(search_record)
    @driver.search(SearchRequest.new(search_record))
  end

  def search_next(search_response, page_index = search.page_index + 1)
    @driver.searchMoreWithId(
      searchId: search_response.search_id,
      pageIndex: page_index
    )
  end

  def search_all(search_record)
    search(search_record) +
      (@res.searchResult.totalPages-1).times.map { |page_index| search_next }
  end

  def get_deleted(get_deleted_filter)
    @driver.getDeleted(GetDeletedRequest.new(get_deleted_filter))
  end
end

end
