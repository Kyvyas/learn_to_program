def english_number number
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if number == 0
      return "zero"
    elsif number.to_s.length == 1 && number/num > 0
      return str + "#{name}"      
    elsif number < 100 && number/num > 0
      return str + "#{name}" if number%num == 0
      return str + "#{name} " + english_number(number%num)
    elsif number/num > 0
      return str + english_number(number/num) + " #{name} " + english_number(number%num)
    end
  end
end

puts english_number(82102713)