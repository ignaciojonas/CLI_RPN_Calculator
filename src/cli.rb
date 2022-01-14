# frozen_string_literal: true

module RPNCalculator
  # CLI to run the RPNCalculator in the console
  class CLI
    def initialize
      @calculator = RPNCalculator::Calculator.new
      run
    end

    def run
      puts 'Welcome to this amazing Reverse Polish Notation Calculator'
      print '> '

      loop do
        input = gets

        if input.nil? || input.chomp == 'q'
          puts 'Bye Bye'
          exit
        end

        begin
          @calculator.evaluate(input.chomp)
        rescue StandardError => e
          puts e.message
        end

        puts @calculator.result
        print '> '
      end
    end
  end
end
