require 'lib/message'
require 'lib/message_gateway'


message_gateway = MessageGateway.new

message1 = Message.new('yoshiaki@sendai-nct.ac.jp', 'file:///messagetest.txt', 'This is a message')
message_gateway.process_message(message1)
