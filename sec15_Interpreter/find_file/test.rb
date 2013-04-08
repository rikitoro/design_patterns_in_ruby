require 'expression'

expr_all = All.new
files = expr_all.evaluate('test_dir')
p files

expr_mp3 = FileName.new('*.txt')
mp3s = expr_mp3.evaluate('test_dir')
p mp3s
