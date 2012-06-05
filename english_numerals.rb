num = ARGV.first.to_i

def single(num)
  count = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  return count[num]
end

def english_numeral(num)
  len = ARGV.first.length
  case len
  when 1
    numeral = single(num)
  when 2
    if num < 20 then
      num = num - 10
      count = ["ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
      numeral = count[num]
    elsif num < 30 then
      num = num.to_s[len-1]
      numeral = "Twenty" + " " + single(num.to_i)
    elsif num < 40 then
      num = num.to_s[len-1]
      numeral = "Thirty" + " " + single(num.to_i)
    else
      numeral = "over"
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

