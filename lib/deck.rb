require_relative "card"


class Deck
  # Your code here
  attr_accessor :cards
  def initialize
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
  end

  def deal
    @cards.pop
  end

  def remaining
    @cards.length
  end

end
