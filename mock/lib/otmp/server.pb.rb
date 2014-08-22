##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class Connect_resp < ::Protobuf::Message; end
class Force_disconnect < ::Protobuf::Message; end
class Server_egress_chat_msg < ::Protobuf::Message; end
class Ping < ::Protobuf::Message; end


##
# Message Fields
#
class Connect_resp
  required :bool, :success, 1
  optional :string, :sessionid, 2
end

class Force_disconnect
  required :string, :sessionid, 1
  optional :string, :msg, 2
end

class Server_egress_chat_msg
  required :string, :username, 1
  required :string, :msg, 2
end

class Ping
  required :int32, :id, 1
  required :string, :sessionid, 2
end

