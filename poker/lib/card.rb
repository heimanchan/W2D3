class Card 
    VALUE_HASH = {"2"=>2,"3"=>3,"4"=>4,"5"=>5,"6"=>6,
                "7"=>7,"8"=>8,"9"=>9,"10"=>10,"J"=>11,
                "Q"=>12, "K"=>13, "A"=>14}
    SUITS = ['D','S','C','H'] 

    attr_reader :card, :value, :suit
    def initialize(card)
        @card = card 
        @value = VALUE_HASH[card[0...-1]] if VALUE_HASH.keys.include?(card[0...-1])
        @suit = card[-1] if SUITS.include?(card[-1])
        raise ArgumentError if @suit.nil? || @value.nil?
    end 

end 

class InvalidSuitError < StandardError; end
