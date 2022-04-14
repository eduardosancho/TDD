# frozen_string_literal: true

class Solver
  def factorial
    number * 2
  end
end

describe 'Outer' do

  it 'the factorial method should work correctly' do
    solver1 = Solver.new

    allow(solver1).to receive(:number).and_return(3)

    expect(solver1.factorial).to eql(6)
  end
end
