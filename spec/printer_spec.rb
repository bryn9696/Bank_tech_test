require 'printer'

describe Printer do
  subject(:printer) { described_class.new }

  describe '#bank_statement' do
    it 'should format string to be outputted correctly' do
      balance = Balance.new
      balance.deposit(100)
      statement = balance.statement
      expect{subject.bank_statement(balance, statement)}.to output("date||credit||debit||balance\n\"02/02/2022 || 100 ||  || 100.00\"\n").to_stdout
    end
  end
end