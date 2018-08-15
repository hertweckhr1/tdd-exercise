# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack']

# hand = [10, "Jack", 2]
def blackjack_score(hand)

  hand.each.with_index do |card, x|
    #give face cards values
    if card == "Queen" || card == ("King") || card == ("Jack")
      hand[x] = 10
    elsif card == 1
      hand[x] = 11
    elsif card == 12
      raise ArgumentError, "invalid card"
    end
  end

  score = hand.sum
  if score > 21
    if hand.include?(11)
      hand[hand.index(11)] = 1
      score = hand.sum
        if hand.include?(11)
          hand[hand.index(11)] = 1
          score = hand.sum
          if hand.include?(11)
            hand[hand.index(11)] = 1
            score = hand.sum
            if hand.include?(11)
              hand[hand.index(11)] = 1
              score = hand.sum
            end
          end
        end
    end
  end

  if score > 21
    raise ArgumentError, "total is over 21"
  end
  return score
  return score
end

# print blackjack_score(hand)
