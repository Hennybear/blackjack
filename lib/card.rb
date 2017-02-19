class Card
  # Your code here
  SUITS = ['♦', '♣', '♠', '♥']
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card_type?
    result = nil
    case @value
      when 'J' || 'Q' || 'K' || 'A'
        result = "face card"
      when 'A'
        result = "Ace"
      else
        result = "pip card"
    end
  end

  def to_s
    "#{@value} of #{@suit}"
  end



end
#
# require 'pry'
# binding.pry
puts card_1 = Card.new('8', '♣')
puts card_1.card_type?
