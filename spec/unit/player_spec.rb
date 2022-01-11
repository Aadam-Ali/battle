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

  describe '#attack' do
    it "calls receive damage" do
      expect(sam).to receive(:receive_damage)
      aadam.attack(sam)
    end

    it "causes the other player to lose HP" do
      expect { aadam.attack sam }.to change { sam.hp }.by -10
    end
  end
end