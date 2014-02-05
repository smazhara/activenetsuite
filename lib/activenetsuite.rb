$:.unshift(File.dirname(__FILE__) + '/activenetsuite')

require 'rubygems'

require 'active_support/inflector'
require 'forwardable'

module NetSuite
  $:.unshift(File.dirname(__FILE__) + '/activenetsuite/soap')
  require 'soap/default'
  require 'soap/defaultDriver'
  require 'soap/defaultMappingRegistry'
  require 'NetSuiteServiceClient'
  $:.shift

  Dir.chdir(File.dirname(__FILE__) + '/activenetsuite') do
    Dir[*%w(
      helpers/*.rb
      accounting/*.rb
      core/*.rb
      messages/*.rb
      relationships/*.rb
      sales/*.rb
    )].each do |file|
      require file
    end
  end
end

