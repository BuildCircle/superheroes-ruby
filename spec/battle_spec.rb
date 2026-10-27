require_relative '../lib/superheroes/main'

RSpec.describe 'battle' do
  let(:hero) { { "name" => "Hero", "score" => 10 } }
  let(:villain) { { "name" => "Villain", "score" => 5 } }
  let(:characters) { { "items" => [hero, villain] } }

  before do
    # Mock the get_characters method
    allow(self).to receive(:get_characters).and_return(characters)
  end

  it 'returns the winner of the battle' do
    expect(battle("Hero", "Villain")).to eq(hero)
  end
end
