require 'player'

describe Player do
subject { described_class.new("Melba") }

  it "returns its name" do 
    expect(subject.name).to eq "Melba"
  end
end