require 'rexml/parsers/sax2parser'
require 'rexml/sax2listener'

xml = File.read('data.xml')
parser = REXML::Parsers::SAX2Parser.new(xml)

parser.listen(:start_element) do |uri, local, qname, attrs|
	puts("start element: #{local}")
end

parser.listen(:end_element) do |uri, local, qname|
	puts("end element: #{local}")
end

parser.parse