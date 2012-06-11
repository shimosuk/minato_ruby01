$LOAD_PATH << File.dirname(__FILE__)
require 'amida'


describe "go_straight" do
  specify do
     stalk(0).should == "|"
  end
end
