# frozen_string_literal: true

require_relative '../solver'

describe 'Solver' do
  context 'Factorial tests' do
    it 'the function factorial called several times by recursion' do
      solver1 = Solver.new
      expect(solver1).to receive(:factorial).with(3).ordered.and_call_original
      expect(solver1).to receive(:factorial).with(2).ordered.and_call_original
      expect(solver1).to receive(:factorial).with(1).ordered.and_call_original
      expect(solver1).to receive(:factorial).with(0).ordered.and_call_original
      solver1.factorial(3)
    end

    it 'Test the result that it takes integer and return its factorial' do
      solver2 = Solver.new
      expect(solver2.factorial(4)).to eq(24)
      expect(solver2.factorial(5)).to eq(120)
    end
  end
end
