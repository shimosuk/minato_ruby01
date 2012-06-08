num = ARGV.first

def exclude_zero(num)
  #TODO 01 00 の0を除外する処理を書く。ただし、1ケタは必ず残す
  check_digit(num)
end

#TODO 1011や1001,1000に未対応
def quadruple_digit(num)
  qnum = num[0]
  tnum = num[1..3]
  "#{single_digit(qnum)} thousand #{triple_digit(tnum)}"# triple_digitをexclude_zeroに
end

#TODO 100や101に未対応
def triple_digit(num)
  tnum = num[0]
  num = num[1..2]
  "#{single_digit(tnum.to_i)} hundread #{double_digit(num)}"# 上記同様
end

def double_digit(num)
  if num.to_i < 20
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

