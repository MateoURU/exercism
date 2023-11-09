class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    case operation
    when '+'
      return "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
    when '*'
      return "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
    when '/'
      begin
        second_operand == 0
      rescue
        puts "Division by zero is not allowed."
      end
      return "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
    else 
      raise UnsupportedOperation.new('UnsupportedOperation')
    end
  end
end
