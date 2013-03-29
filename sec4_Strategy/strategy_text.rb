require 'report'
require 'htmlFormatter'
require 'plainTextFormatter'

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report
