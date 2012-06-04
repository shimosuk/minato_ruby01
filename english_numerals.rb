num =ARGV.first.to_i 

if num < 10 then
  count = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  puts count[num]
elsif num >= 10 && num < 20 then
  num = num - 10
  count = ["ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  puts count[num]
elsif num >= 20 then
  puts "overTwenty"
end
