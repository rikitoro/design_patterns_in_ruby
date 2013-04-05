require 'bank_account'
require 'bank_account_proxy'

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)
puts("account.balance: #{account.balance}")

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)
puts("proxy.balance: #{proxy.balance}")
