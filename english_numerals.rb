num = ARGV.first

def quadruple(num)
  qnum = num[0]
  tnum = num[1..3]
  "#{single(qnum)} thousand #{triple(tnum)}"
end

def triple(num)
  tnum = num[0]
  num = num[1..2]
  "#{single(tnum.to_i)} hundread #{double(num)}"
end

def double(num)
  if num.to_i < 20
    n = num.to_i - 10
    count = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    count[n]
  else
    snum = num[1]
    dnum = num[0].to_i
    count = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    "#{count[dnum - 2]} #{single(snum)}"
  end
end

def single(num)
  count = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  count[num.to_i]
end

def check_digit(num)
  digit = num.length
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

def english_numeral(num)
  if num.to_i.zero?
    "zero"
  else
    check_digit(num)
  end
end
puts english_numeral(num)

