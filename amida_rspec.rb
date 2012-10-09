$LOAD_PATH << File.dirname(__FILE__)
require 'amida'


describe "if_user_is_one,go_straight_only" do
  before do
    @hight = 4
  end
  subject{ stalk(1) }
  it { should == "|" }
end

describe "junction" do
  specify do
    stalk(2).should == "|"
  end
end
