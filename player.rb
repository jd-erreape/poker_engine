require_relative './hand'

class Player
  attr_reader :name
  attr_accessor :chips, :hand
  
  def initialize(name:, chips: 0, hand: Hand.new)
    @name = name
    @chips = chips
    @hand = hand
  end
end