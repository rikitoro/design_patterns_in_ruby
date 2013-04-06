require 'account_proxy'
require 'bank_account'

ap = AccountProxy.new(BankAccount.new(100))
ap.deposit(25)
ap.withdraw(50)
puts("ap.balance: #{ap.balance}")
