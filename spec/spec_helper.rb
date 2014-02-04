require 'simplecov'
SimpleCov.start do
  add_filter do |src|
    src.filename.start_with? SimpleCov.root + '/lib/ActiveNetsuite/soap/'
  end
end

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))
require 'ActiveNetsuite'
require 'webmock'

include ActiveNetsuite
RSpec.configure do |config|
  WebMock.disable_net_connect!
end

