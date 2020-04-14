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
    expect(player.password?).to eq('Password not assigned')

    old_password = '' # empty string, default settins
    new_password = '123456'

    player.change_password(old_password, new_password)
    expect(player.password?).to eq('Password assigned')
  end

  it 'can confirm and change a password'
end
