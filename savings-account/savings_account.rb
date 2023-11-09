module SavingsAccount

  INTEREST_LESS1000 = 0.5
  INTEREST_LESS5000 = 1.621
  INTEREST_MORE5000 = 2.475
  INTEREST_LESS0 = 3.213

  def self.interest_rate(balance)
    if balance < 0
      INTEREST_LESS0
    elsif balance >=0 && balance < 1000
      INTEREST_LESS1000
    elsif balance >= 1000 && balance < 5000
      INTEREST_LESS5000
    else 
      INTEREST_MORE5000
    end
  end

  def self.annual_balance_update(balance)
    if balance < 0
      balance - interest_rate(balance) / 100 * balance.abs
    else 
      balance + interest_rate(balance) / 100 * balance.abs
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0
    calculated_balance = current_balance
    while calculated_balance <= desired_balance && calculated_balance >= 0
      calculated_balance = annual_balance_update(calculated_balance)
      year += 1
    end
    return year.floor
  end
end
