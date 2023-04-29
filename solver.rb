class Solver
  def factorial(value)
    if value.negative?
      raise ArgumentError, 'Factorial of a negative integer is undefined'
    elsif value.zero?
      1
    else
      result = 1
      (1..value).each do |i|
        result *= i
      end
      result
    end
  end

  def reverse(value)
    value.reverse
  end

  def fizzbuzz(value)
    if (value % 3).zero? && (value % 5).zero?
      'fizzbuzz'
    elsif (value % 3).zero?
      'fizz'
    elsif (value % 5).zero?
      'buzz'
    else
      value.to_s
    end
  end
end
