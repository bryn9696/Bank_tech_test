require './lib/balance'

describe Balance do

  it 'adjusts balance after deposit' do
    balance = Balance.new
    balance.deposit(-2014, 1000)
    expect(balance.balance).to eq(1000)
  end

  it 'adjusts balance after withdraw' do
    balance = Balance.new
    balance.withdraw(-2014, 500)
    expect(balance.balance).to eq(-500)
  end

  it 'adjusts balance after deposit followed by withdraw' do
    balance = Balance.new
    balance.deposit(-2014, 100)
    balance.withdraw(-2014, 30)
    expect(balance.balance).to eq(70)
  end

  it 'adjusts balance after withdraw followed by deposit' do
    balance = Balance.new
    balance.withdraw(-2014, 40)
    balance.deposit(-2014, 100)
    expect(balance.balance).to eq(60)
  end

  it 'shows amount deposited and balance in array' do
    balance = Balance.new
    expect(balance.deposit(-2014, 1000)).to eq([["Date||Credit||Debit||Balance"], ["-2014||1000|| ||1000"]])
  end

  it 'shows full bank statement' do
    balance = Balance.new
    expect(balance.withdraw(-2014, 40)).to eq(balance.statement)
    p balance.statement
    expect(balance.deposit(-2014, 100)).to eq(balance.statement)  
  end

end