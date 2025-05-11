input = gets.split(",")
arrrrrray = input[0].split("")
shift = input[1]

shifted_array = arrrrrray.map do |letter|
  if letter =~ /[a-z]/
    ((letter.ord + shift.to_i - 'a'.ord)%26 + 'a'.ord).chr
  elsif letter =~ /[A-Z]/
    ((letter.ord + shift.to_i - 'A'.ord)%26 + 'A'.ord).chr
  else
    letter
  end
end
puts shifted_array.join
