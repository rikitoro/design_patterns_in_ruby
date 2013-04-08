require 'expression'

ast = (Not.new(Bigger.new(50)) & FileName.new('*.mp3')) | FileName.new('*.jpg')
p ast.evaluate('test_dir')

ast2 = (expect(bigger(50)) & name('*.mp3')) | name('*.jpg')
p ast.evaluate('test_dir')
