require 'pathname'
pn = Pathname.new('/usr/local/lib')
pn.each_filename {|file| puts("File: #{file}")}
pn.each_entry {|entry| puts("Entry: #{entry}")}

