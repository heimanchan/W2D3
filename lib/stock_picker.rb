def stock_picker(array)
    day_pair = [array[0], array[1]]
    max_profit = array[0]-array[1]

    array.each_with_index do |price1, i|
        array.each_with_index do |price2, j|
            next if j<=i
            diff = price2-price1 
            if diff > max_profit
                max_profit = diff 
                day_pair = [i,j]
            end 
        end 
    end 
    day_pair    
end 