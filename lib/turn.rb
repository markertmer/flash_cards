class Turn
  attr_reader :card, :guess

  def initialize(string, card)
    @card = card
    @guess = string
  end
end
