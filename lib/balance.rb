class Balance

  attr_accessor :balance, :statement

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance.to_f
    @statement = [["Date||Credit||Debit||Balance"]]
  end

  def deposit(date, amount)
    @balance += amount.to_f.round(2)
    deposit = ["#{date}||#{amount}|| ||#{@balance}"]
    @statement.insert(1, deposit)
  end

  def withdraw(day, amount)
    @balance += (amount.to_f.round(2) * -1)
    withdraw = ["#{day}|| ||#{amount}||#{@balance}"]
    @statement.insert(1, withdraw)
  end

end