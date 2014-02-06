require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  add_filter 'lib/activenetsuite/soap'
end


$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))
require 'activenetsuite'
require 'webmock'

include ActiveNetsuite
RSpec.configure do |config|
  WebMock.disable_net_connect!
end

