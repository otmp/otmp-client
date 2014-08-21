#!/usr/bin/env ruby
require 'socket'
require 'protobuf'
require './lib/otmp_common.pb.rb'
require './lib/otmp_client.pb.rb'

connect = Connect.new(:username => "Igneous", :password => "bogus123")
meta = Meta.new(:msgtype => "Connect", :msg => connect.encode)


sock = UDPSocket.new
sock.send meta.encode, 0, "lordofthephon.es", 10502
