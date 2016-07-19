require_relative "stack"

class RPNCalculator
  def initialize
    @values = Stack.new
  end

  def calculate(input)
    input.each do |token|
      if token == "+" || token == "-" || token == "*" || token == "/"
        raise "too few values" if @values.size < 2
        case token
          when "+" then @values.push(@values.pop + @values.pop) 
          when "-" then @values.push(@values.pop - @values.pop)
          when "*" then @values.push(@values.pop * @values.pop)
          when "/" then @values.push(@values.pop / @values.pop)
        end
      else #token is a number
        @values.push(token.to_f)
      end
    end
    
    if @values.size == 1
      @values.top
    else
      raiase "too many values"
    end
  end
end

