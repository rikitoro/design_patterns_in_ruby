require 'htmlReport'
require 'plainTextReport'

html_report = HTMLReport.new
html_report.output_report

plain_report = PlainTextReport.new
plain_report.output_report
