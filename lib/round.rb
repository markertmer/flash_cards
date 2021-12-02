class Round
  attr_reader :deck, :curr_card, :turns, :number_correct
  def initialize(deck)
    @deck = deck
    @curr_card = 0
    @turns = []
    @number_correct = 0
  end

  def current_card
    @deck.cards[@curr_card]
  end

  def take_turn(guess)
    turn = Turn.new(guess, self.current_card)
    if guess = @deck.cards[@curr_card].answer
      @number_correct += 1
    else
    end
    @turns << turn
    @curr_card += 1
    return turn
  end


end
