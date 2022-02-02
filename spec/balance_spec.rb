require './lib/balance'

describe Balance do

  subject(:balance) { described_class.new }

  it 'adjusts balance after deposit' do
    balance.deposit(1000)
    expect(balance.balance).to eq(1000.00)
  end

  it 'adjusts balance after withdraw' do
    balance.withdraw(500)
    expect(balance.balance).to eq(-500.00)
  end

  it 'adjusts balance after deposit followed by withdraw' do
    balance.deposit(100)
    balance.withdraw(30)
    expect(balance.balance).to eq(70.00)
  end

  it 'adjusts balance after withdraw followed by deposit' do
    balance.withdraw(40)
    balance.deposit(100)
    expect(balance.balance).to eq(60.00)
  end

end