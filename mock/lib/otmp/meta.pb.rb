##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class Meta < ::Protobuf::Message
  class Msgtype < ::Protobuf::Enum
    define :META, 0
    define :PING, 1
    define :PONG, 2
    define :CONNECT, 3
    define :DISCONNECT, 4
    define :CONNECT_RESP, 5
    define :FORCE_DISCONNECT, 6
    define :CLIENT_EGRESS_CHAT_MSG, 7
    define :SERVER_EGRESS_CHAT_MSG, 8
  end

end



##
# Message Fields
#
class Meta
  required ::Meta::Msgtype, :type, 1
  required :bytes, :msg, 2
end

