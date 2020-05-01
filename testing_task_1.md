### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  # Should be a class method as there is no initialize()
  def checkforAce(card) # Function names should be snakecase
    if card.value = 1 # Should be "== 14"
      return true
    else
      return false
    end
  end

# Should be a class method as there is no initialize()
  dif highest_card(card1 card2) # Should be "def" and should be "(card1, card2)"
  if card1.value > card2.value
    return card # Should be "card1" unless card2 is an ace
  else
    return card2 # What if the cards have equal value?  Also need to check for aces!
  end
end
end # Should not be here - one end too many!

def self.cards_total(cards)
  total # Should be set equal to zero ("total = 0")
  for card in cards
    total += card.value
    return "You have a total of" + total
    # The return should be outside of the for loop
    # The string and integer total cannot be added, better would be:
    ### return "You have a total of #{total}"
  end
end
```
