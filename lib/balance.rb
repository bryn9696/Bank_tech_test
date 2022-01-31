class Balance

  attr_accessor :balance, :statement

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = [["Date", "Credit", "Debit", "Balance"]]
  end

  def bank_statement
    return @statement
  end

  def deposit(date, amount)
    @balance += amount
    deposit = [date, amount, " ", @balance]
    @statement.insert(1, deposit)
  end

  def withdraw(date, amount)
    @balance += (amount * -1)
    withdraw = [date, amount, " ", @balance]
    @statement.insert(1, withdraw)
  end

end