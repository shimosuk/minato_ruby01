$LOAD_PATH << File.dirname(__FILE__)
require 'english_numerals'

describe "test_single_digit" do 

  specify do
    single("").should == ""
    single("5").should == "five"
    single("9").should == "nine"
  end
  specify do
    single("10").should == nil
    single("111").should == nil
  end
end

describe "test_double_digit" do 
=begin
  specify{double("11").should == "eleven"}
  specify{double("19").should == "nineteen"}
  specify{double("28").should == "twnty eight"}
=end
end

if check_digit("12") == double("12")
  p true
end

describe "test_check_digit" do 
  specify{check_digit("1").should == single("1")}
=begin
  specify{check_digit("12").should == double("12")}
  specify{check_digit("23").should == double("23")}
  specify{check_digit("123").should == triple("123")}
  specify{check_digit("1234").should == quadruple("123")}
=end
end

