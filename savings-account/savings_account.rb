class SavingsAccount

  def self.interest_rate(balance)
    case balance
    when 0...1000
      0.5
    when 1000...5000
      1.621
    when 5000...(1.0 / 0.0)
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    interest_rate(balance)/100 * balance + balance
  end

  def self.years_before_desired_balance(balance, desired_balance)
    years = 0
    while balance < desired_balance do
      balance = annual_balance_update(balance)
      years += 1
    end

    years
  end
end
