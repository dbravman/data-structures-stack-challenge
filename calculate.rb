require_relative "rpn_calculator"


if ARGV.length != 1
  puts "Enclose input within quotes"
else 
  puts RPNCalculator.new.calculate(ARGV[0].split(" "))
end