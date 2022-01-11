require 'game'

describe Game do
  let(:player_one) { instance_double("Player") }
  let(:player_two) { instance_double("Player") }
  subject { described_class.new(player_one, player_two) } 

  describe '#attack' do
    it 'calls #receive_damage on a Player given' do
      expect(player_one).to receive(:receive_damage)
      subject.attack(player_one)
    end
  end

  describe '#player_one' do
    it "returns player one" do
      expect(subject.player_one).to eq player_one
    end
  end

  describe '#player_two' do
    it "returns player two" do
      expect(subject.player_two).to eq player_two
    end
  end
end