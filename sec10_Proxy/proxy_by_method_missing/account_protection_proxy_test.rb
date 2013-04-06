require 'account_protection_proxy'


s1 = AccountProtectionProxy.new("a simple string", 'yoshiaki')
puts("The length of ths string is #{s1.length}")

s2 = AccountProtectionProxy.new("a simple string", 'hoge')
puts("The length of ths string is #{s2.length}")

