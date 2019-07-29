class Deck
  def initialize(cards: nil)
    @cards = cards || self.class.initial_cards
  end

  class << self
    attr_accessor :initial_cards
  end

  def reset!
    cards = initial_cards

    self
  end

  def shuffle!
    cards = shuffled_cards

    self
  end

  def take!(n = 1)
    # TODO: Control when there're no more cards
    cards.shift(n)
  end

  private

  attr_accessor :cards

  def shuffled_cards
    cards.shuffle
  end
end
