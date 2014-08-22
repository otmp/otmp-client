require 'socket'
require 'protobuf'
require './lib/otmp/meta.pb.rb'
require './lib/otmp/client.pb.rb'

$sock = UDPSocket.new

describe Meta do
  it 'sends connect' do
    connect = Connect.new(:username => 'Igneous', :password => 'bogus123')
    meta = Meta.new(:type => :CONNECT, :msg => connect.encode)
    $sock.send(meta.encode, 0, 'lordofthephon.es', 10502).should eq(23)
  end
  it 'sends client_egress_chat_msg' do
    cl = Client_egress_chat_msg.new(:sessionid => 'b33f', :msg => 'hello world')
    meta = Meta.new(:type => :CLIENT_EGRESS_CHAT_MSG, :msg => cl.encode)
    $sock.send(meta.encode, 0, 'lordofthephon.es', 10502).should eq(23)
  end
  it "sends pong" do
    p = Pong.new(:id => 31337, :sessionid => 'deadb33f')
    meta = Meta.new(:type => :PONG, :msg => p.encode)
    $sock.send(meta.encode, 0, 'lordofthephon.es', 10502).should eq(18)
  end
  it 'sends disconnect' do
    dis = Disconnect.new(:sessionid => 'slfj239sdklsdkl12nr9sd0sl123kn9sd891je')
    meta = Meta.new(:type => :DISCONNECT, :msg => dis.encode)
    $sock.send(meta.encode, 0, 'lordofthephon.es', 10502).should eq(44)
  end
end
