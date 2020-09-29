
# card.rb
VALID_SUIT = [:hearts, :spades, :clubs, :diamonds]
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit =  suit_validation(suit)

    if value < 1 || value > 13
      raise ArgumentError.new("not a valid value")
    end
  end

  def suit_validation(suit)
    unless VALID_SUIT.include? suit
      raise ArgumentError.new("not a valid suit")
    end
    suit
  end

  def to_s
    card_value = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }
    display_value = value
    if !card_value[value].nil?
      display_value = card_value[value]
    end
    return "#{display_value} of #{suit.to_s}"
  end



end
