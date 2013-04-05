require 'encrypter'
require 'string-io-adapter'

encrypter = Encrypter.new('XYZZY')
reader = StringIOAdapter.new('We attac at dawn')
writer = File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)
