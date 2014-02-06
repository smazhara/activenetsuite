require 'simplecov'
SimpleCov.start do
  add_filter do |src|
    src.filename.start_with? SimpleCov.root + '/lib/activenetsuite/soap/'
  end
end

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))
require 'activenetsuite'
require 'webmock'

include ActiveNetsuite
RSpec.configure do |config|
  WebMock.disable_net_connect!
end

