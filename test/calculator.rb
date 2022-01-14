# frozen_string_literal: true

require './src/calculator'
RSpec.describe RPNCalculator::Calculator do
  it 'should add a value to the stack' do
    calculator = RPNCalculator::Calculator.new
    calculator.evaluate('3')
    expect(calculator.result).to eq 3
  end

  it 'should raise an exception when unrecognized token' do
    calculator = RPNCalculator::Calculator.new
    expect { calculator.evaluate('H') }.to raise_error 'Unrecognized Token'
  end

  it 'should add 2 values' do
    calculator = RPNCalculator::Calculator.new
    calculator.evaluate('3 4 +')
    expect(calculator.result).to eq 7
  end

  it 'should substract 2 values' do
    calculator = RPNCalculator::Calculator.new
    calculator.evaluate('3 4 -')
    expect(calculator.result).to eq(-1)
  end

  it 'should multiply 2 values' do
    calculator = RPNCalculator::Calculator.new
    calculator.evaluate('3 4 *')
    expect(calculator.result).to eq(12)
  end

  it 'should divide 2 values' do
    calculator = RPNCalculator::Calculator.new
    calculator.evaluate('10 2 /')
    expect(calculator.result).to eq(5)
  end

  it 'should raise an error when try to divide by zero' do
    calculator = RPNCalculator::Calculator.new
    expect { calculator.evaluate('10 0 /') }.to raise_error 'Cannot divide by zero'
  end

  it 'should raise an error when try to operate with less than 2 values in the stack' do
    calculator = RPNCalculator::Calculator.new
    expect { calculator.evaluate('10 +') }.to raise_error 'You need 2 values in the stack to calculate'
  end
end
