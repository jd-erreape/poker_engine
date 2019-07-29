require 'pry'
require_relative './deck'
require_relative './player'
require_relative './hand'
require_relative './config/initial_cards'

Deck.initial_cards = INITIAL_CARDS

deck = Deck.new.shuffle!


players = [
  Player.new(name: 'Pepe', hand: Hand.new),
  Player.new(name: 'Antonio', hand: Hand.new),
  Player.new(name: 'Manuel', hand: Hand.new),
]

2.times do |iter|
  players.each { |player| player.hand.add!(deck.take!(1)) }
end

p players.inspect
p hands.inspect
