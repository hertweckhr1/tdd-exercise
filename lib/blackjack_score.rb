# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack']

# hand = [1, "Jack", 10, 1, 1]

def blackjack_score(hand)

  hand.each.with_index do |card, x|
    #give face cards values
    if card == "queen" || card == ("king") || card == ("Jack")
      hand[x] = 10
    elsif card == 1
      hand[x] = 11
    end
  end

  score = hand.sum
  if hand_total > 21
    if hand.include?(11)
      hand[hand.index(11)] = 1
      hand_total = hand.sum
        if hand.include?(11)
          hand[hand.index(11)] = 1
          hand_total = hand.sum
          if hand.include?(11)
            hand[hand.index(11)] = 1
            hand_total = hand.sum
          end
          if hand.include?(11)
            hand[hand.index(11)] = 1
            hand_total = hand.sum
          end
        end
    end
  end
  return score
end

print blackjack_score(hand)
