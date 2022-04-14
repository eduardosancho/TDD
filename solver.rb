# frozen_string_literal: true

# hello
class Solver
  def factorial(num)
    return 1 if [0, 1].include?(num)

    raise StandardError if num.negative?

    num * factorial(num - 1)
  end

  def reverse_str(str)
    str.split('').reverse.join('')
  end

  def fizzbuz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
