module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "ten","jack","queen","king" then 10
    when "nine" then 9
    when "eight" then 8
    when "seven" then 7
    when "six" then 6
    when "five" then 5
    when "four" then 4
    when "three" then 3
    when "two" then 2
    else 0
    end
  end

  def self.card_range(card1, card2)
    sum = Blackjack.parse_card(card1) + Blackjack.parse_card(card2)
    case sum
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    when 22
      "Pair of aces"
    else
      "Not a valid sum"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when Blackjack.card_range(card1, card2) == 'Pair of aces'
      "P"
    when Blackjack.card_range(card1, card2) == 'blackjack' &&  Blackjack.parse_card(dealer_card) < 10
      "W"
    when Blackjack.card_range(card1, card2) == 'blackjack' &&  Blackjack.parse_card(dealer_card) >= 10
      "S"
    when Blackjack.card_range(card1, card2) == "high" 
      "S"
    when Blackjack.card_range(card1, card2) == "mid"  &&  Blackjack.parse_card(dealer_card) < 7
      "S"
    when Blackjack.card_range(card1, card2) == "mid"  &&  Blackjack.parse_card(dealer_card) >= 7
      "H"
    when Blackjack.card_range(card1, card2) == "low" 
      "H"
    end
  end
end
