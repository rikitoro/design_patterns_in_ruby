require 'parser'

parser = Parser.new "not(or (bigger 50) (filename *.mp3))"
ast = parser.expression
p ast.evaluate('test_dir')
