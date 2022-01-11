require 'player'

describe Player do
  subject { described_class.new('Aadam') }

  it 'knows it\'s own name' do
    expect(subject.name).to eq('Aadam')
  end

  it 'has a default HP when initialized' do
    expect(subject.hp).to eq(described_class::DEFAULT_HP)
  end
end