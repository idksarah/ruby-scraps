dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

input = gets
found = {}
input = input.gsub(/\W/, ' ').downcase.split(" ")
input.pop
dictionary.each{ |dictTerm| 
  input.each {|inputTerm|
    if(inputTerm == dictTerm)
      found[inputTerm] = found.fetch(inputTerm, 0) + 1
    end
  }
}
puts found