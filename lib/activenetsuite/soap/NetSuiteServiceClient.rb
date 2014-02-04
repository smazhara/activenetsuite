##!/usr/bin/env ruby
#require 'defaultDriver.rb'


#module ActiveNetsuite

#endpoint_url = ARGV.shift
#obj = ActiveNetsuitePortType.new(endpoint_url)

## run ruby with -d to see SOAP wiredumps.
#obj.wiredump_dev = STDERR if $DEBUG

## SYNOPSIS
##   login(parameters)
##
## ARGS
##   parameters      LoginRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}LoginRequest
##
## RETURNS
##   parameters      LoginResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}LoginResponse
##
## RAISES
##   fault           InsufficientPermissionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InsufficientPermissionFault
##   fault           InvalidAccountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidAccountFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           InvalidVersionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidVersionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.login(parameters)

## SYNOPSIS
##   ssoLogin(parameters)
##
## ARGS
##   parameters      SsoLoginRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}SsoLoginRequest
##
## RETURNS
##   parameters      SsoLoginResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}SsoLoginResponse
##
## RAISES
##   fault           InsufficientPermissionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InsufficientPermissionFault
##   fault           InvalidAccountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidAccountFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           InvalidVersionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidVersionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.ssoLogin(parameters)

## SYNOPSIS
##   mapSso(parameters)
##
## ARGS
##   parameters      MapSsoRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}MapSsoRequest
##
## RETURNS
##   parameters      MapSsoResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}MapSsoResponse
##
## RAISES
##   fault           InsufficientPermissionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InsufficientPermissionFault
##   fault           InvalidAccountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidAccountFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           InvalidVersionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidVersionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.mapSso(parameters)

## SYNOPSIS
##   changePassword(parameters)
##
## ARGS
##   parameters      ChangePasswordRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}ChangePasswordRequest
##
## RETURNS
##   parameters      ChangePasswordResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}ChangePasswordResponse
##
## RAISES
##   fault           InsufficientPermissionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InsufficientPermissionFault
##   fault           InvalidAccountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidAccountFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           InvalidVersionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidVersionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.changePassword(parameters)

## SYNOPSIS
##   changeEmail(parameters)
##
## ARGS
##   parameters      ChangeEmailRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}ChangeEmailRequest
##
## RETURNS
##   parameters      ChangeEmailResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}ChangeEmailResponse
##
## RAISES
##   fault           InsufficientPermissionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InsufficientPermissionFault
##   fault           InvalidAccountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidAccountFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           InvalidVersionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidVersionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.changeEmail(parameters)

## SYNOPSIS
##   logout(parameters)
##
## ARGS
##   parameters      LogoutRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}LogoutRequest
##
## RETURNS
##   parameters      LogoutResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}LogoutResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.logout(parameters)

## SYNOPSIS
##   add(parameters)
##
## ARGS
##   parameters      AddRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AddRequest
##
## RETURNS
##   parameters      AddResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AddResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.add(parameters)

## SYNOPSIS
##   delete(parameters)
##
## ARGS
##   parameters      DeleteRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}DeleteRequest
##
## RETURNS
##   parameters      DeleteResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}DeleteResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.delete(parameters)

## SYNOPSIS
##   search(parameters)
##
## ARGS
##   parameters      SearchRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchRequest
##
## RETURNS
##   parameters      SearchResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.search(parameters)

## SYNOPSIS
##   searchMore(parameters)
##
## ARGS
##   parameters      SearchMoreRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchMoreRequest
##
## RETURNS
##   parameters      SearchMoreResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchMoreResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.searchMore(parameters)

## SYNOPSIS
##   searchMoreWithId(parameters)
##
## ARGS
##   parameters      SearchMoreWithIdRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchMoreWithIdRequest
##
## RETURNS
##   parameters      SearchMoreWithIdResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchMoreWithIdResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.searchMoreWithId(parameters)

## SYNOPSIS
##   searchNext(parameters)
##
## ARGS
##   parameters      SearchNextRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchNextRequest
##
## RETURNS
##   parameters      SearchNextResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}SearchNextResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.searchNext(parameters)

## SYNOPSIS
##   update(parameters)
##
## ARGS
##   parameters      UpdateRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateRequest
##
## RETURNS
##   parameters      UpdateResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.update(parameters)

## SYNOPSIS
##   upsert(parameters)
##
## ARGS
##   parameters      UpsertRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpsertRequest
##
## RETURNS
##   parameters      UpsertResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpsertResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.upsert(parameters)

## SYNOPSIS
##   addList(parameters)
##
## ARGS
##   parameters      AddListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AddListRequest
##
## RETURNS
##   parameters      AddListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AddListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.addList(parameters)

## SYNOPSIS
##   deleteList(parameters)
##
## ARGS
##   parameters      DeleteListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}DeleteListRequest
##
## RETURNS
##   parameters      DeleteListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}DeleteListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.deleteList(parameters)

## SYNOPSIS
##   updateList(parameters)
##
## ARGS
##   parameters      UpdateListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateListRequest
##
## RETURNS
##   parameters      UpdateListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.updateList(parameters)

## SYNOPSIS
##   upsertList(parameters)
##
## ARGS
##   parameters      UpsertListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpsertListRequest
##
## RETURNS
##   parameters      UpsertListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpsertListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.upsertList(parameters)

## SYNOPSIS
##   get(parameters)
##
## ARGS
##   parameters      GetRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetRequest
##
## RETURNS
##   parameters      GetResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.get(parameters)

## SYNOPSIS
##   getList(parameters)
##
## ARGS
##   parameters      GetListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetListRequest
##
## RETURNS
##   parameters      GetListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getList(parameters)

## SYNOPSIS
##   getAll(parameters)
##
## ARGS
##   parameters      GetAllRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetAllRequest
##
## RETURNS
##   parameters      GetAllResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetAllResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getAll(parameters)

## SYNOPSIS
##   getSavedSearch(parameters)
##
## ARGS
##   parameters      GetSavedSearchRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetSavedSearchRequest
##
## RETURNS
##   parameters      GetSavedSearchResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetSavedSearchResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getSavedSearch(parameters)

## SYNOPSIS
##   getCustomizationId(parameters)
##
## ARGS
##   parameters      GetCustomizationIdRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetCustomizationIdRequest
##
## RETURNS
##   parameters      GetCustomizationIdResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetCustomizationIdResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getCustomizationId(parameters)

## SYNOPSIS
##   initialize(parameters)
##
## ARGS
##   parameters      InitializeRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}InitializeRequest
##
## RETURNS
##   parameters      InitializeResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}InitializeResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.initialize(parameters)

## SYNOPSIS
##   initializeList(parameters)
##
## ARGS
##   parameters      InitializeListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}InitializeListRequest
##
## RETURNS
##   parameters      InitializeListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}InitializeListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.initializeList(parameters)

## SYNOPSIS
##   getSelectValue(parameters)
##
## ARGS
##   parameters      GetSelectValueRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}getSelectValueRequest
##
## RETURNS
##   parameters      GetSelectValueResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}getSelectValueResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getSelectValue(parameters)

## SYNOPSIS
##   getItemAvailability(parameters)
##
## ARGS
##   parameters      GetItemAvailabilityRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetItemAvailabilityRequest
##
## RETURNS
##   parameters      GetItemAvailabilityResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetItemAvailabilityResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getItemAvailability(parameters)

## SYNOPSIS
##   getBudgetExchangeRate(parameters)
##
## ARGS
##   parameters      GetBudgetExchangeRateRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetBudgetExchangeRateRequest
##
## RETURNS
##   parameters      GetBudgetExchangeRateResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetBudgetExchangeRateResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getBudgetExchangeRate(parameters)

## SYNOPSIS
##   getConsolidatedExchangeRate(parameters)
##
## ARGS
##   parameters      GetConsolidatedExchangeRateRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetConsolidatedExchangeRateRequest
##
## RETURNS
##   parameters      GetConsolidatedExchangeRateResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetConsolidatedExchangeRateResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getConsolidatedExchangeRate(parameters)

## SYNOPSIS
##   getCurrencyRate(parameters)
##
## ARGS
##   parameters      GetCurrencyRateRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetCurrencyRateRequest
##
## RETURNS
##   parameters      GetCurrencyRateResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetCurrencyRateResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getCurrencyRate(parameters)

## SYNOPSIS
##   getDataCenterUrls(parameters)
##
## ARGS
##   parameters      GetDataCenterUrlsRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetDataCenterUrlsRequest
##
## RETURNS
##   parameters      GetDataCenterUrlsResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetDataCenterUrlsResponse
##
## RAISES
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getDataCenterUrls(parameters)

## SYNOPSIS
##   getPostingTransactionSummary(parameters)
##
## ARGS
##   parameters      GetPostingTransactionSummaryRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetPostingTransactionSummaryRequest
##
## RETURNS
##   parameters      GetPostingTransactionSummaryResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetPostingTransactionSummaryResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getPostingTransactionSummary(parameters)

## SYNOPSIS
##   getServerTime(parameters)
##
## ARGS
##   parameters      GetServerTimeRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetServerTimeRequest
##
## RETURNS
##   parameters      GetServerTimeResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetServerTimeResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getServerTime(parameters)

## SYNOPSIS
##   attach(parameters)
##
## ARGS
##   parameters      AttachRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AttachRequest
##
## RETURNS
##   parameters      AttachResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AttachResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.attach(parameters)

## SYNOPSIS
##   detach(parameters)
##
## ARGS
##   parameters      DetachRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}DetachRequest
##
## RETURNS
##   parameters      DetachResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}DetachResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.detach(parameters)

## SYNOPSIS
##   updateInviteeStatus(parameters)
##
## ARGS
##   parameters      UpdateInviteeStatusRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateInviteeStatusRequest
##
## RETURNS
##   parameters      UpdateInviteeStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateInviteeStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.updateInviteeStatus(parameters)

## SYNOPSIS
##   updateInviteeStatusList(parameters)
##
## ARGS
##   parameters      UpdateInviteeStatusListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateInviteeStatusListRequest
##
## RETURNS
##   parameters      UpdateInviteeStatusListResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}UpdateInviteeStatusListResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.updateInviteeStatusList(parameters)

## SYNOPSIS
##   asyncAddList(parameters)
##
## ARGS
##   parameters      AsyncAddListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncAddListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncAddList(parameters)

## SYNOPSIS
##   asyncUpdateList(parameters)
##
## ARGS
##   parameters      AsyncUpdateListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncUpdateListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncUpdateList(parameters)

## SYNOPSIS
##   asyncUpsertList(parameters)
##
## ARGS
##   parameters      AsyncUpsertListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncUpsertListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncUpsertList(parameters)

## SYNOPSIS
##   asyncDeleteList(parameters)
##
## ARGS
##   parameters      AsyncDeleteListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncDeleteListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncDeleteList(parameters)

## SYNOPSIS
##   asyncGetList(parameters)
##
## ARGS
##   parameters      AsyncGetListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncGetListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncGetList(parameters)

## SYNOPSIS
##   asyncInitializeList(parameters)
##
## ARGS
##   parameters      AsyncInitializeListRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncInitializeListRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncInitializeList(parameters)

## SYNOPSIS
##   asyncSearch(parameters)
##
## ARGS
##   parameters      AsyncSearchRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncSearchRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.asyncSearch(parameters)

## SYNOPSIS
##   getAsyncResult(parameters)
##
## ARGS
##   parameters      GetAsyncResultRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetAsyncResultRequest
##
## RETURNS
##   parameters      GetAsyncResultResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetAsyncResultResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##   fault           AsyncFault - {urn:faults_2013_2.platform.webservices.netsuite.com}AsyncFault
##
#parameters = nil
#puts obj.getAsyncResult(parameters)

## SYNOPSIS
##   checkAsyncStatus(parameters)
##
## ARGS
##   parameters      CheckAsyncStatusRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}CheckAsyncStatusRequest
##
## RETURNS
##   parameters      AsyncStatusResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}AsyncStatusResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##   fault           AsyncFault - {urn:faults_2013_2.platform.webservices.netsuite.com}AsyncFault
##
#parameters = nil
#puts obj.checkAsyncStatus(parameters)

## SYNOPSIS
##   getDeleted(parameters)
##
## ARGS
##   parameters      GetDeletedRequest - {urn:messages_2013_2.platform.webservices.netsuite.com}GetDeletedRequest
##
## RETURNS
##   parameters      GetDeletedResponse - {urn:messages_2013_2.platform.webservices.netsuite.com}GetDeletedResponse
##
## RAISES
##   fault           InvalidSessionFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidSessionFault
##   fault           InvalidCredentialsFault - {urn:faults_2013_2.platform.webservices.netsuite.com}InvalidCredentialsFault
##   fault           ExceededRequestLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestLimitFault
##   fault           ExceededUsageLimitFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededUsageLimitFault
##   fault           ExceededRecordCountFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRecordCountFault
##   fault           ExceededRequestSizeFault - {urn:faults_2013_2.platform.webservices.netsuite.com}ExceededRequestSizeFault
##   fault           UnexpectedErrorFault - {urn:faults_2013_2.platform.webservices.netsuite.com}UnexpectedErrorFault
##
#parameters = nil
#puts obj.getDeleted(parameters)




#end
