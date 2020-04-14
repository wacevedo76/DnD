require_relative '../character.rb'
RSpec.describe 'A D&D character' do
  let(:player) { Character.new('William') }
  
  it 'Can be assinged a name' do
    expect(player.name).not_to be_empty
    expect(player.name).to eq('William')
  end

  it 'can be assigned a password' do
    password = '123456'

    confirmed = player.change_password('', password)
    expect(confirmed).to eq('Password assigned')
  end

  it 'can check that a password is set' do
    pending 'test not implemented yet.'  
    expect(player.password?).to eq('Password not assigned')
  end
  it 'can confirm and change a password'
end
