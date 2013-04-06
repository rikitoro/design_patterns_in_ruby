require 'virtual_proxy'

array = VirtualProxy.new { Array.new }

array << 'hello'
array << 'out'
array << 'there'