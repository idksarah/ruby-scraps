stocks = gets.strip
stocksArray = stocks[1,stocks.length - 2].split(",")
# puts stocksArray

max = 0
best = []

stocksArray.each_with_index { |buy, i|
    stocksArray.each_with_index { |sell, j|
        if j > i 
            if (sell.to_i - buy.to_i) > max
                # puts "#{i} + #{j}"
                max = sell.to_i - buy.to_i 
                # puts max
                best = [i, j]
            end
        end
    }
}

puts best