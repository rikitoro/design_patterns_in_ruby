require 'rubygems'
require 'mailfactory'

mail_builder = MailFactory.new
mail_builder.to = 'russ@russolsen.com'
mail_builder.from = 'rikitoro@hoge.com'
mail_builder.subject = 'The document'
mail_builder.text = 'There is that document you wanted'
mail_builder.attach = 'book.doc'

puts mail_builder.to_s