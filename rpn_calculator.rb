require_relative "stack"

class RPNCalculator
  attr_reader :values

  def initialize
    @values = Stack.new
  end

  def calculate(input)
    input.each do |token|
      if token == "+" || token == "-" || token == "*" || token == "/"
        raise "too few values" if @values.size < 2
        num2 = @values.pop
        num1 = @values.pop
        case token
          when "+" then @values.push(num1 + num2) 
          when "-" then @values.push(num1 - num2)
          when "*" then @values.push(num1 * num2)
          when "/" then @values.push(num1 / num2)
        end
      else #token is a number
        @values.push(token.to_f)
      end
    end
  
    if @values.size == 1
      @values.top
    else
      raise "too many values"
    end
  end
end

