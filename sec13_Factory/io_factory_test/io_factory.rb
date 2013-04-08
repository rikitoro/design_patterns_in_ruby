class HTMLReader
	def read
		puts("HTMLReader read")
	end
end

class HTMLWriter
	def write
		puts("HTMLWriter write")
	end
end

class PDFReader
	def read
		puts("PDFReader read")
	end
end

class PDFWriter
	def write
		puts("PDFWriter write")
	end
end



class IOFactory
	def initialize(format)
		@reader_class = self.class.const_get("#{format}Reader")
		@writer_class = self.class.const_get("#{format}Writer")
	end
	
	def new_reader
		@reader_class.new
	end
	
	def new_writer
		@writer_class.new
	end
end

html_factory = IOFactory.new('HTML')
html_reader = html_factory.new_reader
html_reader.read
html_writer = html_factory.new_writer
html_writer.write

pdf_factory = IOFactory.new('PDF')
pdf_reader = pdf_factory.new_reader
pdf_reader.read
pdf_writer = pdf_factory.new_writer
pdf_writer.write
