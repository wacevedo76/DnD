require_relative '../character.rb'

RSpec.describe 'A D&D character' do
  it 'Can be assinged a name' do
    name = 'William'
    player01 = Character.new(name)
    
    player01name = player01.name

    expect(player01name).not_to be_empty
    expect(player01name).to eq('William')
  end
end
