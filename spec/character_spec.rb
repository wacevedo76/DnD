require_relative '../character.rb'
RSpec.describe 'A D&D character' do
  let(:player) { Character.new('William') }
  
  it 'Can be assinged a name' do
    expect(player.name).not_to be_empty
    expect(player.name).to eq('William')
  end

  it 'can be assigned a password' do
    old_password = '' # empty string, default settins
    new_password = '123456'

    confirmed = player.change_password(old_password, new_password)
    expect(confirmed).to eq('Password assigned')
  end

  it 'can check that a password is set' do
    expect(player.password?).to eq(false)

    old_password = '' # empty string, default settins
    new_password = '123456'

    player.change_password(old_password, new_password)
    expect(player.password?).to eq(true)
  end

  it 'can verify and change a password' do
    first_password = '123456'
    second_password = '234567'
    wrong_password = 'wrong password'

    player.change_password('', first_password) # initial password set
    expect(player.password?).to be_truthy
    
    
    result01 = player.change_password(wrong_password, second_password) # entering wrong password to test verification
    expect(result01).to eq('Password not changed')

    result02 = player.change_password(first_password, second_password)
    expect(result02).to eq('Password changed')

  end
end
