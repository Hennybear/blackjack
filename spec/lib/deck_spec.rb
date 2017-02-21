require "spec_helper"

RSpec.describe Deck do
  # Your tests here
  let(:deck) {Deck.new}
  context 'when deck is initialized' do
    it 'creates 52 distinct cards' do
      expect(deck.remaining).to eq(52)
    end
  end

  context 'after player hand is dealt' do
    it 'should only have 50 cards' do
      deck.deal
      expect(deck.remaining).to eq(50)
    end
  end
end
