class Game
  attr_reader :players, :deck
  
  def initialize(players:, deck:)
    @players = players
    @deck = deck
    @rounds = []
  end
end