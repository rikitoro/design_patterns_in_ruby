require 'expression'

expr_all = All.new
files = expr_all.evaluate('test_dir')
p files

expr_mp3 = FileName.new('*.mp3')
mp3s = expr_mp3.evaluate('test_dir')
p mp3s

expr_jpg = FileName.new('*.jpg')
jpgs = expr_jpg.evaluate('test_dir')
p jpgs

expr_bigger = Bigger.new(50)
bigger = expr_bigger.evaluate('test_dir')
p bigger

small_expr = Not.new(Bigger.new(50))
small_files = small_expr.evaluate('test_dir')
p small_files