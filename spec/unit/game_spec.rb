require 'game'

describe Game do
  let(:player_double) { instance_double("Player") }
  describe '#attack' do
    it 'calls #receive_damage on a Player given' do
      expect(player_double).to receive(:receive_damage)
      subject.attack(player_double)
    end
  end
end