### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame # Refactored!

  def self.check_for_ace(card)
    return card.value == 14 # Assuming aces high
  end

  def self.highest_card(card1, card2)
    return card1 if card1.value > card2.value
    return card2 if card2.value > card1.value
  end

  def self.cards_total(cards)
    total = cards.sum {|card| card.value}
    return "You have a total of #{total}"
  end

end
