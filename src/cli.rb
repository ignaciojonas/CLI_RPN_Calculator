# frozen_string_literal: true

module RPNCalculator
  # CLI to run the RPNCalculator in the console
  class CLI
    def initialize
      @calculator = RPNCalculator::Calculator.new
      puts 'Welcome to this amazing Reverse Polish Notation Calculator'
      print '> '
      run
    end

    def run
      loop do
        input = gets
        exit_app(input)

        begin
          @calculator.evaluate(input.chomp)
        rescue StandardError => e
          puts e.message
        end

        print_results
      end
    end

    def print_results
      puts @calculator.result
      print '> '
    end

    def exit_app(input)
      return unless input.nil? || input.chomp == 'q'

      puts 'Bye Bye'
      exit
    end
  end
end
