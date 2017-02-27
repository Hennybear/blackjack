require_relative "card"
require_relative "deck"
require_relative "hand"
require 'pry'

$deck = Deck.new
player = Hand.new
computer = Hand.new
# Your code here...

player.calculate_score
computer.calculate_score
output_player_score = "Player score: #{player.score}\n\n"
output_dealer_score = "Dealer score: #{computer.score}\n\n"

puts "Welcome to Blackjack!\n\n"

player.hand.each do |card|
  puts "Player was dealt #{card}"
end

puts output_player_score

input = nil
until player.score >= 21
  print "Hit or stand (H/S): "
  input = gets.chomp.downcase
  if input != "h" && input != "s"
    puts "invalid input"
  elsif input == "s"
    puts "You chose to stand"
    puts "Player score: #{player.calculate_score}\n\n"
    # puts "Your final hand is: #{player.to_s}"
    break
  elsif input == "h"
    player.hit
    puts "Player was dealt #{player.hand[-1]}\n"
  end
  player.calculate_score
  puts "Player score: #{player.score}\n\n"
 end

 computer.hand.each do |card|
   puts "Dealer was dealt #{card}"
 end
puts output_dealer_score

player.calculate_score
puts "Player's final score: #{player.score}\n"

until computer.score >= 17
  computer.hit
  computer.calculate_score
  puts "Dealer was dealt #{computer.hand[-1]}\n"
end

puts "Dealer's final score: #{computer.calculate_score}\n\n"


if player.score > 21
  puts "Bust! You lose..."
elsif player.score > computer.score
  puts "You Win!"
elsif computer.score > 21
  puts "Bust! You Win!"
else
  puts "Dealer Wins."
end


puts "#{$deck.remaining} cards remaining in deck.\n\n"
