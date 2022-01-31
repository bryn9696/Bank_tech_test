class Balance

  attr_accessor :balance, :statement

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance.to_f
    @statement = [["Date||Credit||Debit||Balance"]]
  end

  def bank_statement
    i = 0
    loop do 
      puts @statement[i]
      i += 1
      break if i > @statement.length
    end
  end

  def deposit(date, amount)
    @balance += amount.to_f
    deposit = ["#{date}||#{amount}|| ||#{@balance}"]
    @statement.insert(1, deposit)
  end

  def withdraw(day, amount)
    @balance += (amount.to_f * -1)
    withdraw = ["#{day}|| ||#{amount}||#{@balance}"]
    @statement.insert(1, withdraw)
  end

end