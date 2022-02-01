require './lib/balance'

describe Balance do

  subject(:balance) { described_class.new }

  it 'adjusts balance after deposit' do
    balance.deposit(10-12-2014, 1000.50)
    expect(balance.balance).to eq(1000.50)
  end

  it 'adjusts balance after withdraw' do
    balance.withdraw(12-10-2015, 500.44)
    expect(balance.balance).to eq(-500.44)
  end

  it 'adjusts balance after deposit followed by withdraw' do
    balance.deposit(15-01-2016, 100)
    balance.withdraw(16-01-2016, 30)
    expect(balance.balance).to eq(70)
  end

  it 'adjusts balance after withdraw followed by deposit' do
    balance.withdraw(-2014, 40)
    balance.deposit(-2014, 100)
    expect(balance.balance).to eq(60)
  end

  it 'shows amount deposited and balance in array' do
    expect(balance.deposit("10-12-2014", 1000)).to eq([["Date||Credit||Debit||Balance"], ["10-12-2014||1000|| ||1000.0"]])
  end

  it 'shows full bank statement' do
    expect(balance.withdraw("10-03-2014", 40)).to eq(balance.statement)
    p balance.statement
    expect(balance.deposit("10-03-2014", 100)).to eq(balance.statement)  
  end

end