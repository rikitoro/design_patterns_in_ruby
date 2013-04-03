require 'composite-command'
require 'create-file'
require 'delete-file'
require 'copy-file'

cmds = CompositeCommand.new

cmds.add_command(CreateFile.new('file1.txt', 'Hello world\n'))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

puts(cmds.description)
cmds.execute
