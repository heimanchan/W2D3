require_relative 'card.rb'

class Deck 
    attr_reader :cards, :card_str
    def initialize 
        @cards = Deck.make_deck
        @card_str = cards.map { |el| el.card }
    end 

    def self.make_deck
        result = []
        Card::VALUE_HASH.each do |k,v|
            Card::SUITS.each do |suit|
                card = k+suit
                result << Card.new(card)
            end 
        end 
        result 
    end 


end 