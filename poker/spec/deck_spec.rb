require "deck"
require "card"

RSpec.describe do
    subject(:deck) {Deck.new}

    describe "initialize" do

        it "has 52 cards" do
            expect(deck.cards.length).to eq(52)
        end

        it "should make every card unique" do
            expect(deck.card_str).to eq(deck.card_str.uniq)
        end
    end
end