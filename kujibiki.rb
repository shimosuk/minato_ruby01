@menber = ARGV.first.to_i
@hight = 4

def stalk
@menber.times {|i|
  case i
  when @menber - 1
    print "|"
  else
    line = ["|  ", "|--"]
    print line[rand(2)]
  end
}
end
def count
  @hight.times {
    print " "
    stalk
    print "\n"
  }
  result
end
def result
  rand(@menber).times {
    print "   "
  }
  print "!!!"
end
puts count
