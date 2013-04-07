require 'simple_writer'
require 'numbering_writer'
require 'time_stamping_writer'

w = SimpleWriter.new('out.txt')
w.extend(NumberingWriter)
w.extend(TimeStampingWriter)

w.write_line('hello')
