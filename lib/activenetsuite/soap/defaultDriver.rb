require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module ActiveNetsuite

class ActiveNetsuitePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://webservices.netsuite.com/services/NetSuitePort_2013_2"

  Methods = [
    [ "login",
      "login",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "login"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InsufficientPermissionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InsufficientPermissionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidAccountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidAccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidVersionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidVersionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "ssoLogin",
      "ssoLogin",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "ssoLogin"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "ssoLoginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InsufficientPermissionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InsufficientPermissionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidAccountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidAccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidVersionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidVersionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "mapSso",
      "mapSso",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "mapSso"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "mapSsoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InsufficientPermissionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InsufficientPermissionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidAccountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidAccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidVersionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidVersionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "changePassword",
      "changePassword",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "changePassword"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "changePasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InsufficientPermissionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InsufficientPermissionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidAccountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidAccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidVersionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidVersionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "changeEmail",
      "changeEmail",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "changeEmail"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "changeEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InsufficientPermissionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InsufficientPermissionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidAccountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidAccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidVersionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidVersionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "logout",
      "logout",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "logout"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "add",
      "add",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "add"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "addResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "delete",
      "delete",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "delete"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "search",
      "search",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "search"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "searchMore",
      "searchMore",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchMore"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchMoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "searchMoreWithId",
      "searchMoreWithId",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchMoreWithId"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchMoreWithIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "searchNext",
      "searchNext",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchNext"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "searchNextResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "update",
      "update",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "update"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "upsert",
      "upsert",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "upsert"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "upsertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "addList",
      "addList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "addList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "addListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "deleteList",
      "deleteList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "deleteList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "deleteListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "updateList",
      "updateList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "upsertList",
      "upsertList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "upsertList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "upsertListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "get",
      "get",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "get"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getList",
      "getList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getAll",
      "getAll",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getAll"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getAllResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getSavedSearch",
      "getSavedSearch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getSavedSearch"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getSavedSearchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getCustomizationId",
      "getCustomizationId",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getCustomizationId"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getCustomizationIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "initialize",
      "initialize",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "initialize"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "initializeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "initializeList",
      "initializeList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "initializeList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "initializeListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getSelectValue",
      "getSelectValue",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getSelectValue"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getSelectValueResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getItemAvailability",
      "getItemAvailability",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getItemAvailability"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getItemAvailabilityResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getBudgetExchangeRate",
      "getBudgetExchangeRate",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getBudgetExchangeRate"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getBudgetExchangeRateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getConsolidatedExchangeRate",
      "getConsolidatedExchangeRate",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getConsolidatedExchangeRate"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getConsolidatedExchangeRateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getCurrencyRate",
      "getCurrencyRate",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getCurrencyRate"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getCurrencyRateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getDataCenterUrls",
      "getDataCenterUrls",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getDataCenterUrls"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getDataCenterUrlsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getPostingTransactionSummary",
      "getPostingTransactionSummary",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getPostingTransactionSummary"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getPostingTransactionSummaryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getServerTime",
      "getServerTime",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getServerTime"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getServerTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "attach",
      "attach",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "attach"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "attachResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "detach",
      "detach",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "detach"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "detachResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "updateInviteeStatus",
      "updateInviteeStatus",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateInviteeStatus"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateInviteeStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "updateInviteeStatusList",
      "updateInviteeStatusList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateInviteeStatusList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "updateInviteeStatusListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncAddList",
      "asyncAddList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncAddList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncAddListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncUpdateList",
      "asyncUpdateList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncUpdateList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncUpdateListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncUpsertList",
      "asyncUpsertList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncUpsertList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncUpsertListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncDeleteList",
      "asyncDeleteList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncDeleteList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncDeleteListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncGetList",
      "asyncGetList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncGetList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncGetListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncInitializeList",
      "asyncInitializeList",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncInitializeList"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncInitializeListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "asyncSearch",
      "asyncSearch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncSearch"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "asyncSearchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getAsyncResult",
      "getAsyncResult",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getAsyncResult"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getAsyncResultResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::AsyncFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"AsyncFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "checkAsyncStatus",
      "checkAsyncStatus",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "checkAsyncStatus"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "checkAsyncStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::AsyncFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"AsyncFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getDeleted",
      "getDeleted",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getDeleted"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:messages_2013_2.platform.webservices.netsuite.com", "getDeletedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ActiveNetsuite::InvalidSessionFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidSessionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::InvalidCredentialsFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"InvalidCredentialsFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededUsageLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededUsageLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRecordCountFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRecordCountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestLimitFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestLimitFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::ExceededRequestSizeFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"ExceededRequestSizeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ActiveNetsuite::UnexpectedErrorFault_"=>{:ns=>"urn:platform_2013_2.webservices.netsuite.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = ::ActiveNetsuite::DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = ::ActiveNetsuite::DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
