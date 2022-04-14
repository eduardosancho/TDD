# frozen_string_literal: true

require_relative '../solver'

describe 'Solver' do
  context 'Factorial tests' do
    it 'the function factorial called several times by recursion' do
      solver1 = Solver.new
      expect(solver1).to receive(:factorial).with(3).ordered.and_call_original
      expect(solver1).to receive(:factorial).with(2).ordered.and_call_original
      expect(solver1).to receive(:factorial).with(1).ordered.and_call_original
      solver1.factorial(3)
    end

    it 'Test the result that it takes integer and return its factorial:' do
      solver2 = Solver.new
      expect(solver2.factorial(4)).to eq(24)
      expect(solver2.factorial(5)).to eq(120)
    end

    it 'Test should raise an exception if the argument is a negative number:' do
      solver3 = Solver.new
      expect { solver3.factorial(-1) }.to raise_exception(Exception)
      expect { solver3.factorial(-5) }.to raise_exception(Exception)
    end
  end

  context 'Reverse Tests' do
    it 'the function reverse should reverse the string' do
      solver4 = Solver.new
      expect(solver4.reverse_str('hello')).to eq('olleh')
      expect(solver4.reverse_str('good')).to eq('doog')
    end
  end

  
end
