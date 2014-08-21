#!/usr/bin/env ruby
require 'socket'
require 'protobuf'
require './lib/otmp/meta.pb.rb'
require './lib/otmp/client.pb.rb'

sock = UDPSocket.new

connect = Connect.new(:username => "Igneous", :password => "bogus123")
meta = Meta.new(:type => :CONNECT, :msg => connect.encode)
sock.send meta.encode, 0, "lordofthephon.es", 10502

dis = Disconnect.new(:sessionid => "slfj239sdklsdkl12nr9sd0sl123kn9sd891je")
mtwo = Meta.new(:type => :DISCONNECT, :msg => dis.encode)
sock.send mtwo.encode, 0, "lordofthephon.es", 10502
