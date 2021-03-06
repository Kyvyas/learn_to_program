def roman_to_integer roman
  digits = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
  
total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0
    x = roman[index].downcase
    index = index - 1
    val = digits[x]
    if !val
      puts "This is not valid"
      return
    end
    
    if val < prev
      val = val * -1
    else 
      prev = val
    end
    total = total + val
  end
  
  total
end

puts(roman_to_integer('mcmxcix'))

puts(roman_to_integer('CCCLXV'))
