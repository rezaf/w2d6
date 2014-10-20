require_relative 'card'

class Deck
  attr_accessor :cards
  
  VALUES = { :two => 2, 
             :three => 3, 
             :four => 4, 
             :five => 5, 
             :six => 6, 
             :seven => 7, 
             :eight => 8, 
             :nine => 9, 
             :ten => 10, 
             :jack  => 11, 
             :queen => 12, 
             :king => 13, 
             :ace => 14
  }
  
  SUITS = [:clubs, :diamonds, :spades, :hearts]
  
  def initialize
    @cards = []
    build_deck
  end
  
  def build_deck
    VALUES.each do |value|
      SUITS.each do |suit|
        cards << Card.new(value, suit)
      end
    end
  end
  
  def give_cards(n)
    result = []
    n.times { result << cards.shift }
    result
  end
  
  def accept_cards(card_arr)
    card_arr.each { |card| cards << card }
  end
  
  def shuffle
    cards.shuffle
  end
end
