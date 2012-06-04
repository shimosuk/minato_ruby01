num = ARGV.first.to_i

def english_numeral(num)
  len = ARGV.first.length
  case len
  when 1
    count = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    numeral = count[num]
  when 2
    if num >= 10 && num < 20 then
      num = num - 10
      count = ["ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
      numeral = count[num]
    elsif num >= 20 then
      numeral = "overTwenty"
    end
  end
  return numeral
end

if num == 0
 numeral = "zero"
else
 numeral = english_numeral(num)
end
puts numeral
