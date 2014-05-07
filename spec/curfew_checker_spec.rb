require 'spec_helper'

describe "simple_curfew_checker" do 
  it "should tell you if you're in trouble if it's 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/simple_curfew_checker.rb'
    simple_curfew_checker(11)
  end

  it "should tell you if you're in trouble if it's later than 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/simple_curfew_checker.rb'
    simple_curfew_checker(12)
  end

  it "should not tell you you're in trouble when time is before 11" do 
    STDOUT.should_not_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/simple_curfew_checker.rb'
    simple_curfew_checker(10)
  end
end

describe "curfew_checker" do 
  it "should say you're in trouble if it's 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/curfew_checker.rb'
    curfew_checker(11)
  end

  it "should say you're in trouble if it's later than 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/curfew_checker.rb'
    curfew_checker(12)
  end

  it "should say you can keep having fun" do 
    STDOUT.should_receive(:puts).with("It's all good. Keep having fun!")
    require_relative '../lib/curfew_checker.rb'
    curfew_checker(9)
  end
end

describe "complex_curfew_checker" do 
  it "should say you're in trouble if it's 11" do 
    STDOUT.should_receive(:puts).with("Time to apparate!")
    require_relative '../lib/complex_curfew_checker.rb'
    complex_curfew_checker(11)
  end

  it "should say you're in trouble if it's later than 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/complex_curfew_checker.rb'
    complex_curfew_checker(12)
  end

  it "should say you can keep having fun" do 
    STDOUT.should_receive(:puts).with("It's all good. Keep having fun!")
    require_relative '../lib/complex_curfew_checker.rb'
    complex_curfew_checker(9)
  end
end

describe "deluxe_curfew_checker" do 
  it "should say you're in trouble if it's 11" do 
    STDOUT.should_receive(:puts).with("Time to apparate!")
    require_relative '../lib/deluxe_curfew_checker.rb'
    deluxe_curfew_checker(11)
  end

  it "should say you're in trouble if it's later than 11" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get home quick!")
    require_relative '../lib/deluxe_curfew_checker.rb'
    deluxe_curfew_checker(12)
  end

  it "should say you can keep having fun with the time you have left" do 
    STDOUT.should_receive(:puts).with("You have 2 hour(s) left to keep having fun!")
    require_relative '../lib/deluxe_curfew_checker.rb'
    deluxe_curfew_checker(9)
  end
end

describe "platinum_curfew_checker" do 
  it "should say you're in trouble if it's 11 and curfew is at 11" do 
    STDOUT.should_receive(:puts).with("Time to apparate!")
    require_relative '../lib/platinum_curfew_checker.rb'
    deluxe_curfew_checker(11, 11)
  end

  it "should say you're in trouble if it's later than 11, which is your curfew" do 
    STDOUT.should_receive(:puts).with("You're in trouble! Better get back to Hogwarts quick!")
    require_relative '../lib/deluxe_curfew_checker.rb'
    deluxe_curfew_checker(12, 11)
  end

  it "should say you can keep having if curfew is 11 and time is 9 and say there are 2 hrs left" do 
    STDOUT.should_receive(:puts).with("You have 2 hour(s) left to keep having fun!")
    require_relative '../lib/deluxe_curfew_checker.rb'
    deluxe_curfew_checker(9, 11)
  end
end
