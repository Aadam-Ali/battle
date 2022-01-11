require 'player'

describe Player do
  subject(:aadam) { Player.new('Aadam') }
  subject(:sam) { Player.new('Sam') }

  it 'knows it\'s own name' do
    expect(aadam.name).to eq('Aadam')
  end

  it 'has a default HP when initialized' do
    expect(sam.hp).to eq(described_class::DEFAULT_HP)
  end

  describe '#receive_damage' do
    it "causes a player to lose 10HP" do
      expect { aadam.receive_damage }.to change { aadam.hp }.by -10 
    end
  end
end