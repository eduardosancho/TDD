class Solver
  def factorial(n)
    return 1 if [0,1].include?(n)

    raise Exception if n.negative?

    n * factorial(n - 1)
  end

  def reverse_str(str)
     str.split('').reverse.join('')
  end

  def fizzbuz(n)
    if n%3 == 0 && n%5 == 0 
      return 'fizzbuzz'
    elsif n%3 == 0
      return 'fizz'
    elsif n%5 == 0
      return 'buzz'
    else
      return n.to_s
    end
  end
end
