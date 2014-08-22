##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class Connect < ::Protobuf::Message; end
class Disconnect < ::Protobuf::Message; end
class Client_egress_chat_msg < ::Protobuf::Message; end
class Pong < ::Protobuf::Message; end


##
# Message Fields
#
class Connect
  required :string, :username, 1
  required :string, :password, 2
end

class Disconnect
  required :string, :sessionid, 1
end

class Client_egress_chat_msg
  required :string, :sessionid, 1
  required :string, :msg, 2
end

class Pong
  required :int32, :id, 1
  required :string, :sessionid, 2
end

