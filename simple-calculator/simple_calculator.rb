class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  class ZeroDivisionError < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if !ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    end

    if first_operand.is_a?(String) || second_operand.is_a?(String)
      raise ArgumentError
    end

    if second_operand == 0 && operation == "/"
      raise ZeroDivisionError.new("Division by zero is not allowed.")
    end

    answer = first_operand.public_send(operation.to_sym, second_operand)
    return "#{first_operand} #{operation} #{second_operand} = #{answer}"

  rescue ZeroDivisionError => e
    return e.message
  end
end
