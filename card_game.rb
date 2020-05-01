### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame

  def self.check_for_ace(card)
    if card.value == 14
      return true
    else
      return false
    end
  end

  def self.highest_card(card1, card2)
    return card1 if card1.value > card2.value
    return card2 if card2.value > card1.value
  end

  def self.cards_total(cards)
    total = 0
    for card in cards
      total += card.value
    end
    return "You have a total of #{total}"
  end

end
