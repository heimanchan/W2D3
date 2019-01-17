def my_uniq(arr)
    hash = Hash.new(0)
    arr.each do |el|
        hash[el] += 1
    end
    # hash.select { |k,v| v == 1}
    hash.keys
end