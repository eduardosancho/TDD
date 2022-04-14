# frozen_string_literal: true

class Outer
  def initialize(processor)
    @processor = processor
  end
  
  def factorial(number)
  end
end

describe 'Outer' do

  it 'the factorial method should work correctly' do
    mock = double('solver')
    expect(mock).to receive(:factorial).with(6)

    result = Outer.new(mock)
    result.factorial(6)
  end
end
