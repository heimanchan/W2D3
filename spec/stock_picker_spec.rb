require "stock_picker"

RSpec.describe do 
    describe "#stock_picker" do
        subject(:array) {Array.new([100, 90, 120, 170, 140, 200])}
        it "returns most profitable pair of days" do
            expect(stock_picker(array)).to eq([1,5])
        end

        it "must be a pair of days" do
          result = stock_picker(array)
          expect(result.length).to eq(2)
        end

        it "the buy date should be before the sell date" do
          result = stock_picker(array)
          expect(result.first < result.last).to be true
        end
    end
end