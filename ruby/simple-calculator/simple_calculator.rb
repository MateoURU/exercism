class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    # checking argument is previous to the operation
    unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
      raise ArgumentError.new("ArgumentError")
    end
    case operation
    when '+'
      return "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
    when '*'
      return "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
    when '/'
      begin
        return "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
      rescue ZeroDivisionError
        return "Division by zero is not allowed."
      end
    else 
      raise UnsupportedOperation.new('UnsupportedOperation')
    end
  end
end
