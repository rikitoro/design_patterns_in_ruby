require 'virtual_account_proxy'
require 'bank_account'

account = VirtualAccountProxy.new { BankAccount.new(10) }
puts("account.balance: #{account.balance}")
