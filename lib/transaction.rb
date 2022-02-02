class Transaction
  attr_reader :info

  def initialize(credit: nil, debit: nil, balance:)
    @info = { date: Time.new.strftime("%d/%m/%Y"), credit: credit, debit: debit, balance: sprintf('%.2f', balance.to_f)}
  end
end