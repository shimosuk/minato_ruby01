num = ARGV.first.to_i

def double(num)
  count = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  count[num - 2]
end

def single(num)
  count = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  count[num]
end

def english_numeral(num)
  len = ARGV.first.length
  case len
  when 1
    single(num)
  when 2
    if num < 20
      num -= 10
      count = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
      count[num]
    else
      snum = num.to_s[len - 1]
      dnum = num.to_s[0]
      "#{double(dnum.to_i)} #{single(snum.to_i)}"
    end
  when 3
    "over"
  end
end

if num.zero?
  numeral = "zero"
else
  numeral = english_numeral(num)
end
puts numeral

