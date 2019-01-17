require "two_sum"

RSpec.describe do 
  describe "#two_sum" do
        let(:array1) {Array.new([-1, 0, 2, -2, 1])}

        it "finds all pairs of positions where the elements sum to zero" do 
            expect(two_sum(array1)).to eq([[0, 4], [2, 3]])
        end

        let(:array2) {Array.new([-1,1,1,2,-2,3])}
        it "sorts dictionary style" do 
            expect(two_sum(array2)).to eq([[0,1],[0,2],[3,4]])
        end 

        let(:array3) {Array.new([-1,1,1,-1,1,1])}
        it "does not return duplicate pairs" do
            expect(two_sum(array3)).to eq([[0,1],[0,2],[0,4],[0,5],[1,3],[2,3],[3,4],[3,5]])
        end
  end 
end