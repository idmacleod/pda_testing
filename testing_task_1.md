### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1 # Should be "== 1"
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Should be "def" and should be "(card1, card2)"
  if card1.value > card2.value
    return card # Should be "card1"
  else
    return card2 # What if the cards have equal value?
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
