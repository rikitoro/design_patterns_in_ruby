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

expr_mp3_or_jpg = Or.new(expr_mp3, expr_jpg)
mp3_or_jpgs = expr_mp3_or_jpg.evaluate('test_dir')
p mp3_or_jpgs

expr_mp3_and_bigger = And.new(expr_mp3, expr_bigger)
mp3_and_biggers = expr_mp3_and_bigger.evaluate('test_dir')
p mp3_and_biggers

expr_complex = And.new(Not.new(FileName.new('*.jpg')), Not.new(Bigger.new(50)))
files = expr_complex.evaluate('test_dir')
p files