require 'pry'
require_relative './deck'
require_relative './hand'
require_relative './config/initial_cards'

Deck.initial_cards = INITIAL_CARDS

deck = Deck.new.shuffle!

hands = [Hand.new, Hand.new, Hand.new]

2.times do |iter|
  hands.each { |hand| hand.add!(deck.take!(1)) }
end

p hands.inspect
