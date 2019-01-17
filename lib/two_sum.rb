def two_sum(array)
    pairs = []
    array.each_with_index do |el,i|
        array.each_with_index do |el2,j|
            next if j<=i
            pairs << [i,j] if el+el2 == 0
        end 
    end 
  pairs
end 