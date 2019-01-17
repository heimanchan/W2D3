def my_transpose(arr)
    result = Array.new(arr.length) {[]}
    arr.each_with_index do |row, i|
        row.each_with_index do |col, j|
            result[j][i] = arr[i][j]
        end
    end
    result
end