class Hand
  attr_reader :cards

  def initialize(cards: [])
    @cards = cards
  end

  def add!(new_cards)
    @cards = new_cards + cards

    self
  end

  # Be careful with this method because
  # it will discard all occurences of the
  # discarded_card in the hand
  def discard!(card)
    # TODO: Control when there're no more cards
    @cards = cards.reject { |card| card == discarded_card }
  end
end
