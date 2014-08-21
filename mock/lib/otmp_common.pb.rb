##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Message Classes
#
class Ping < ::Protobuf::Message; end
class Pong < ::Protobuf::Message; end
class Meta < ::Protobuf::Message; end


##
# Message Fields
#
class Ping
  required :int32, :id, 1
  required :string, :sessionid, 2
end

class Pong
  required :int32, :id, 1
  required :string, :sessionid, 2
end

class Meta
  required :string, :msgtype, 1
  required :bytes, :msg, 2
end

