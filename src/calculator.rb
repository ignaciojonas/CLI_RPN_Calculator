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
        else
          raise 'Unrecognized Token'
        end
      end
    end

    def result
      @stack.last
    end
  end
end
