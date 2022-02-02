require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(credit: 500, debit: nil, balance: 500) }

  describe 'initialises with a' do
    it 'with a transaction amount' do
      expect(subject.info[:credit]).to eq 500
    end
    it 'with a balance' do
      expect(subject.info[:balance]).to eq "500.00"
    end
    it 'with a transaction amount' do
      expect(subject.info[:debit]).to eq nil
    end
  end
end