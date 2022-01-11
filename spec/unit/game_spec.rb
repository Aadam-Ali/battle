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

  describe '#turn' do
    it 'starts at 0' do
      expect(subject.turn).to eq(0)
    end
  end

  describe '#advance_turn' do
    it 'increases the turn number' do
      expect { subject.advance_turn }.to change { subject.turn }.by(1)
    end
  end

  describe '#current_player' do
    it 'returns player one on the first turn' do
      expect(subject.current_player).to eq player_one
    end
    it 'returns player two on the second turn' do
      subject.advance_turn
      expect(subject.current_player).to eq player_two
    end
  end

  describe '#other_player' do
    it 'returns player two on the first turn' do
      expect(subject.other_player).to eq player_two
    end
    it 'returns player one on the second turn' do
      subject.advance_turn
      expect(subject.other_player).to eq player_one
    end
  end
end