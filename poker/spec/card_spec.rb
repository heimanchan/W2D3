require "card"

RSpec.describe do
    subject(:new_card) { Card.new("3D") }

    describe "#initialize" do
        
        it "returns the correct suit" do
            expect(new_card.suit).to eq('D')   
        end

        it "returns the correct value" do
             # let(:card_type) { "3D" }
             # its(:value) { should == 3 }
            expect(new_card.value).to eq(3)
        end

        it "should raise StandError" do
            expect{card = Card.new("90X")}.to raise_error(StandardError)
        end
    end
end