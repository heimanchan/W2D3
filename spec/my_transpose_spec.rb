require "my_transpose"

RSpec.describe do 

    describe "#my_transpose" do 
        let(:array1) {Array.new([[0,1],[2,3]])}
        it "can transpose 2x2 matrix" do
            expect(my_transpose(array1)).to eq([[0,2],[1,3]])
        end

        let(:array2) {Array.new([[0, 1, 2],[3, 4, 5],[6, 7, 8]])}
        it "can transpose 3x3 matrix" do
            expect(my_transpose(array2)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])            
        end
    end

end