input = gets.strip
entries = input[1,input.length - 2].split(",")

entries.each_with_index {|_, i|
    entries.each_with_index {|_, j|
        if j > i 
            if entries[j] < entries[i] 
                temp = entries[i]
                entries[i] = entries[j]
                entries[j] = temp
        end 
    end
    }
}

puts entries