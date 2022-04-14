class Solver
  def factorial(n)
    return 1 if [0,1].include?(n)

    raise Exception if n.negative?

    n * factorial(n - 1)
  end

  def reverse_str(str)
     str.split('').reverse.join('')
  end
end
