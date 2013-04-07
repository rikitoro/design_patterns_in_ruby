require 'simple_writer'
require 'numbering_writer'
require 'time_stamping_writer'
require 'check_summing_writer'

writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
writer.write_line('Hello out there')

writer2 = CheckSummingWriter.new(TimeStampingWriter.new(
NumberingWriter.new(SimpleWriter.new('final2.txt'))))
writer2.write_line('Hello out There!!!')
