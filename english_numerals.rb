num = ARGV.first.to_i

def quadruple(num)
  qnum = num.to_s[0]
  tnum = num.to_s[1..3]
  "#{single(qnum.to_i)} thousand #{triple(tnum.to_i)}"
end

def triple(num)
  tnum = num.to_s[0]
  num = num.to_s[1..2]
  "#{single(tnum.to_i)} hundread #{double(num)}"
end

def double(num)
  if num.to_i < 20
    num -= 10
    count = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    count[num]
  else
    snum = num.to_s[1].to_i
    dnum = num.to_s[0].to_i
    count = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    "#{count[dnum - 2]} #{single(snum)}"
  end
end

def single(num)
  count = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  count[num]
end

def english_numeral(num)
  digit = ARGV.first.length
  case digit
  when 1
    single(num)
  when 2
    double(num)
  when 3
    triple(num)
  when 4
    quadruple(num)
  when 5
    "over"
  end
end

if num.zero?
  numeral = "zero"
else
  numeral = english_numeral(num)
end
puts numeral

