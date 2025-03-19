class SimpleCalculator
  def self.calculate(a, b, operator)
    (raise UnsupportedOperation) unless ['+', '*', '/'].include?(operator)
    (raise ArgumentError) unless a.is_a?(Integer) && b.is_a?(Integer)
    (raise DivisionByZero.new("Division by zero is not allowed.")) if b == 0 && operator = '/'

    "#{a} #{operator} #{b} = #{ a.public_send(operator,b) }"

  rescue DivisionByZero => e
    e.message
  end

  class UnsupportedOperation < StandardError ; end
  class DivisionByZero < StandardError ; end
end
