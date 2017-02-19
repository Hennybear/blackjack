class Deck
  # Your code here

  def deck
    @deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck << "#{value}#{suit}"
      end
    end
    @deck
  end
  
end
