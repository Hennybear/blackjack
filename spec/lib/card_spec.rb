require "spec_helper"

RSpec.describe Card do
  # Your tests here
  let(:card) {Card.new('8', '♣')}
  context 'when card is initialized' do
    it 'contains the correct value and suit of the card' do
      expect(card.to_s).to eq("8 of ♣")
    end
  end

  describe '#card_type?' do
    it 'returns the type of card (face card, ace, or pip card)' do
      expect(card.card_type?).to eq("pip card")
    end
  end
end
