require "my_uniq"

RSpec.describe  do 
    describe "#my_uniq" do
        subject(:array) {Array.new([1,2,1,3,3])}

        it "removes all dups" do
            expect(my_uniq(array)).to eq([1,2,3])
        end

        it "performs the same as #uniq" do
            expect(my_uniq(array)).to eq(array.uniq)
        end


    end

end