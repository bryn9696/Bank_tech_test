require './lib/balance'
require './lib/interaction'

describe Balance do

  it 'prints bank balance' do
    balance = Balance.new
    expect(balance.deposit(1000)).to eq(1000)
  end

end