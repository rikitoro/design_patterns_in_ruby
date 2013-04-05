require 'bank_account'
require 'account_protection_proxy'

account_yoshiaki = AccountProtectionProxy.new(BankAccount.new(100), 'yoshiaki')
puts("account_yoshiaki.balance: #{account_yoshiaki.balance}")

account_fuga = AccountProtectionProxy.new(BankAccount.new(200), 'fuga')
puts("account_fuga.balance: #{account_fuga.balance}")
