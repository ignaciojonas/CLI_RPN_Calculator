# frozen_string_literal: true

require './src/calculator'
RSpec.describe RPNCalculator::Calculator do
  it 'should add a value to the stack' do
    calculator = RPNCalculator::Calculator.new
    calculator.eval('3')
    expect(calculator.result).to eq 3
  end

  it 'should raise an exception when unrecognized token' do
    calculator = RPNCalculator::Calculator.new
    expect { calculator.eval('H') }.to raise_error 'Unrecognized Token'
  end
end
