num = ARGV.first.to_i

def double(num)
  count = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  return count[num - 1]
end

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
    else
      snum = num.to_s[len-1]
      dnum = num.to_s[0]
      numeral = double(dnum.to_i) + " " + single(snum.to_i)
    end
  when 3
    numeral = "over"
  end
  return numeral
end

if num == 0
 numeral = "zero"
else
 numeral = english_numeral(num)
end
puts numeral

