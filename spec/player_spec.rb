require 'player'

describe Player do
subject { described_class.new("Melba") }

  it "returns its name" do
    expect(subject.name).to eq "Melba"
  end

  it "passes out when 0HP reached" do
    10.times { subject.reduce_hp }
    expect(subject.awake).to eq false
  end

end
