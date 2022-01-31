require './lib/balance'

describe Balance do

  it 'adjusts balance after deposit' do
    balance = Balance.new
    expect(balance.deposit(1000)).to eq(1000)
  end

  it 'adjusts balance after withdraw' do
    balance = Balance.new
    expect(balance.withdraw(500)).to eq(-500)
  end

  it 'adjusts balance after dposit followed by withdraw' do
    balance = Balance.new
    balance.deposit(100)
    expect(balance.withdraw(30)).to eq(70)
  end

  it 'adjusts balance after dposit followed by withdraw' do
    balance = Balance.new
    balance.withdraw(40)
    expect(balance.deposit(100)).to eq(60)
  end
end