# frozen_string_literal: true

module RPNCalculator
  # Reverse Polish Notation Calculator
  # This class has all the methods to calculate basic math equations
  # using the RPN.
  class Calculator
    def initialize
      @stack = []
    end

    def eval(expression)
      expression.split(' ').map do |token|
        case token
        when /\d+/
          @stack.push(token.to_f)
        when /\+/
          adds
        when /-/
          substract
        else
          raise 'Unrecognized Token'
        end
      end
    end

    def result
      @stack.last
    end

    def adds
      op1, op2 = @stack.pop(2)
      @stack.push(op1 + op2)
    end

    def substract
      op1, op2 = @stack.pop(2)
      @stack.push(op1 - op2)
    end
  end
end
