require_relative 'printer.rb'
require_relative 'transaction.rb'

class Balance

  attr_accessor :balance, :statement

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
    @printer = Printer.new
  end

  def deposit(amount)
    @balance += amount
    @statement.insert(0, Transaction.new(credit: amount, debit: nil, balance: @balance).info)
  end

  def withdraw(amount)
    @balance -= amount
    @statement.insert(0, Transaction.new(credit: amount, debit: nil, balance: @balance).info)
  end

  def print
    @printer.bank_statement(@balance, @statement)
  end
end