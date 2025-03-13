class Blackjack

  CARD_VALUES = {
    ace: 11,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 10,
    queen: 10,
    king: 10
  }

  def self.parse_card(card)
    if CARD_VALUES.keys.include?(card.to_sym)
      CARD_VALUES[card.to_sym]
    else
      0
    end
  end

  def self.card_range(first_card, second_card)
    value = parse_card(first_card) + parse_card(second_card)
    case value
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    when 21 then 'blackjack'
    end
  end

  def self.first_turn(first_card, second_card, dealer_card)
    return 'P' if first_card == "ace" && second_card == "ace"

    case card_range(first_card, second_card)
    when'blackjack' 
      if !['ace', 'king', 'queen', 'jack', 'ten'].include?(dealer_card)
        'W'
      else
        'S'
      end
    when 'high'
      'S'
    when 'mid'
      if ['one', 'two', 'three', 'four', 'five', 'six'].include?(dealer_card)
        'S'
      else
        'H'
      end
    when 'low'
      'H'
    end
  end
end
