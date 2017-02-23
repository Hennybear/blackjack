require_relative "deck"
require_relative "card"
require 'pry'

class Hand
  # Your code here
  attr_accessor :hand, :deck, :card

  def initialize
    @hand = []
    @suitless_cards = []
    @card_values = []
    @deck = Deck.new
    2.times do
      @card = @deck.deal
      @hand << @card
    end
    @hand
  end

  def deal
      1.times {@hand << @deck.deal}
  end

  def calculate_score
    remove_suits
    remove_faces
    score = 0
    @card_values.each do |card|
      score += card
    end
    @card_values.each do |card|
      if score > 21 && card == 11
        score -= 10
      end
    end
    score
  end


  def to_s
    @hand
  end

  private

  def remove_suits
    @hand.each do |card|
      @suitless_cards << card.value
    end
  end

  def remove_faces
    @suitless_cards.each do |card|
      if card == "J" || card == "K" || card == "K"
        @card_values << 10
      elsif card == "A"
        @card_values << 11
      else
        @card_values << card.to_i
      end
      @card_values
    end
  end

end

player_hand = Hand.new
player_hand.deal
puts player_hand.calculate_score
puts "================="
dealer_hand = Hand.new
dealer_hand.deal
puts dealer_hand.calculate_score
