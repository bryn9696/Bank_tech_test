class Balance

  attr_accessor :balance

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
        @balance = balance
  end

  def balance
    return @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance += (amount * -1)
  end

end