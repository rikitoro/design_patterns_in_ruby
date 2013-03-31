require 'report'
require 'htmlFormatter'
require 'plainTextFormatter'

report = Report.new(&HTMLFORMATTER)
report.output_report

report.formatter = PLAINTEXTFORMATTER
report.output_report

report1 = Report.new do |context|
	puts("=== #{context.title} ===")
	context.text.each do |line|
		puts(line)
	end
end

report1.output_report
