num = ARGV.first

def quadruple_digit(num)
  qnum = num[0]
  tnum = num[1..3]
  "#{single_digit(qnum)} thousand #{triple_digit(tnum)}"
end

def triple_digit(num)
  tnum = num[0]
  num = num[1..2]
  if tnum == "0"
    "#{double_digit(num)}"
  else
    "#{single_digit(tnum.to_i)} hundread #{double_digit(num)}"
  end
end

def double_digit(num)
  if num[0]=="0"
    single_digit(num[1])
  elsif num.to_i < 20
    n = num.to_i - 10
    count = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    count[n]
  else
    snum = num[1]
    dnum = num[0].to_i
    count = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    "#{count[dnum - 2]} #{single_digit(snum)}"
  end
end

def single_digit(num)
  count = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  count[num.to_i]
end

def check_digit(num)
  digit = num.length
  case digit
  when 1
    single_digit(num)
  when 2
    double_digit(num)
  when 3
    triple_digit(num)
  when 4
    quadruple_digit(num)
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

