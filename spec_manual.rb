$LOAD_PATH << File.dirname(__FILE__)
require 'english_numerals'

describe "test_single" do #ExampleGroup 文字列指定じゃないとメソッドを見に行ってしまう

  # 一つの事象に対してのテストは、基本specifyを使う
  specify{single("3").should == "three"}

  specify do
    single("3").should_not be_nil
    single("3").should == "three"
    single("2").should_not == "three"
  end

  # 複数の振る舞いがあるときのテストは、subject
  subject{single("3")} # あまり使わないやり方
  it{
    should_not be_nil
    should == "three"
  }

  subject{single("3")} # こっちを使うほうがいい
  it{should_not be_nil}
  it{should == "three"}
  it{should_not == "one"}

end
