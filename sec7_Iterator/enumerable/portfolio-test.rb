require 'account'
require 'portfolio'

my_portfolio = Portfolio.new
my_portfolio.add_account(Account.new("hoge", 100))
my_portfolio.add_account(Account.new("fuga", 2001))
my_portfolio.add_account(Account.new("foo", 11))

p my_portfolio.any? {|account| account.balance > 2000}
p my_portfolio.any? {|account| account.balance > 2001}
p my_portfolio.all?	{|account| account.balance >= 10}
p my_portfolio.all?	{|account| account.balance >= 20}

