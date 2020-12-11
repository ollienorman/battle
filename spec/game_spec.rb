require 'game'

describe Game do

  let(:player_1) { double :player, reduce_hp: true }
  let(:player_2) { double :player, reduce_hp: true }
  subject { described_class.new( player_1, player_2 ) }

  describe "#attack" do
    it "responds to .attack" do
      expect(subject).to respond_to(:attack)
    end

    it "causes the player to reduce_hp" do
      expect(subject.attack(player_1)).to eq true
    end
  end
end
