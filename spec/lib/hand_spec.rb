require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  let(:hand) {Hand.new}
  context 'when hand is initialized' do
    it 'deals out 2 cards to the player' do
      expect(hand.hand.size).to eq(2)
    end
  end

  context 'when player hits' do
    it 'deals an additional card to the player' do
      hand.hit
      expect(hand.hand.size).to eq(3)
    end
  end

end
