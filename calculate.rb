require_relative "rpn_calculator"

input = ARGV.split(" ")
puts RPNCaluclator.new.calculate(input)
