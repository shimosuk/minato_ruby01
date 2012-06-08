$LOAD_PATH << File.dirname(__FILE__)
require 'english_numerals'

describe "test_single_digit" do 

  specify do
    single_digit("").should == ""
    single_digit("5").should == "five"
    single_digit("9").should == "nine"
  end
  specify do
    single_digit("10").should == nil
    single_digit("111").should == nil
  end
end

describe "test_double_digit" do 
  specify{double_digit("11").should == "eleven"}
  specify{double_digit("19").should == "nineteen"}
  specify{double_digit("28").should == "twenty eight"}
end

describe "test_check_digit" do 
  specify{check_digit("1").should == single_digit("1")}
  specify{check_digit("12").should == double_digit("12")}
  specify{check_digit("23").should == double_digit("23")}
  specify{check_digit("123").should == triple_digit("123")}
  specify{check_digit("1234").should == quadruple_digit("1234")}
end

