class Card
  attr_reader :suit, :number

  def initialize(number:, suit:)
    @suit = suit
    @number = number
  end

  def ==(card)
    suit == card.suit && number == card.number
  end
end
