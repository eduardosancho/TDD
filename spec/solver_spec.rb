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

  context 'Test Fizzbuzz algorithm' do
    it 'the function returns fizzbuzz if the number is divisble by 3 and 5' do
      solver5 = Solver.new
      expect(solver5.fizzbuz(15)).to eq('fizzbuzz')
      expect(solver5.fizzbuz(30)).to eq('fizzbuzz')
    end

    it 'the function returns fizz if the number is divisble 3' do
      solver6 = Solver.new
      expect(solver6.fizzbuz(9)).to eq('fizz')
      expect(solver6.fizzbuz(3)).to eq('fizz')
    end

    it 'the function returns buzz if the number is divisble by 5' do
      solver7 = Solver.new
      expect(solver7.fizzbuz(5)).to eq('buzz')
      expect(solver7.fizzbuz(25)).to eq('buzz')
    end

    
    it 'the function returns the number if not divisvle by 3 or 5' do
      solver8 = Solver.new
      expect(solver8.fizzbuz(8)).to eq('8')
      expect(solver8.fizzbuz(19)).to eq('19')
    end
  end

end
