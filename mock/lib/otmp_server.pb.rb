##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class ConnectResp < ::Protobuf::Message; end
class ForceDisconnect < ::Protobuf::Message; end
class ServerEgressChatMsg < ::Protobuf::Message; end


##
# Message Fields
#
class ConnectResp
  required :bool, :success, 1
  optional :string, :sessionid, 2
end

class ForceDisconnect
  required :string, :sessionid, 1
  optional :string, :msg, 2
end

class ServerEgressChatMsg
  required :string, :username, 1
  required :string, :msg, 2
end

