##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class Connect < ::Protobuf::Message; end
class Disconnect < ::Protobuf::Message; end
class ClientEgressChatMsg < ::Protobuf::Message; end


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

class ClientEgressChatMsg
  required :string, :sessionid, 1
  required :string, :msg, 2
end

