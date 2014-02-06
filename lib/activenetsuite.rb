require 'active_support/inflector'
require 'forwardable'
require 'soap/soap'

module NetSuite
  $:.unshift(File.dirname(__FILE__) + '/activenetsuite/soap')
  require 'default'
  require 'defaultDriver'
  require 'defaultMappingRegistry'
  require 'NetSuiteServiceClient'
  $:.shift

  Dir.chdir(File.dirname(__FILE__)) do
    Dir[*%w(
      activenetsuite/helpers/*.rb
      activenetsuite/accounting/*.rb
      activenetsuite/core/*.rb
      activenetsuite/messages/*.rb
      activenetsuite/relationships/*.rb
      activenetsuite/sales/*.rb
    )].each do |file|
      require file
    end
  end
end

