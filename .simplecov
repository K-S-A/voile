if ENV['COVERAGE']
  require 'rspec/simplecov'

  SimpleCov.start do
    add_filter '/config'
    add_filter '/spec/'
    add_filter { |s| s.lines.count < 3 }
    add_group 'models', 'app/models'
    add_group 'helpers', 'app/helpers'
    add_group 'lib', 'lib/'
  end

  SimpleCov.minimum_coverage 74
  SimpleCov.minimum_coverage_by_file 19
  SimpleCov.maximum_coverage_drop 5
  RSpec::SimpleCov.start

  SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::SimpleFormatter
  ])
end
