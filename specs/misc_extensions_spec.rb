require File.dirname(__FILE__) + '/spec_helper'

describe String, "periodify" do
  it "should add a period to the end of a string" do
    "string".periodify.should == "string."
  end
  
  it "should not modify string if already ending in a period" do
    "string.".periodify.should == "string."
  end
end

describe String, "periodify!" do
  it "should permanently add a period to the end of the string" do
    a = "string"
    a.periodify!
    a.should == "string."
  end
  
  it "should not modify string if already ending in a period" do
    a = "string."
    a.periodify!
    a.should == "string."
  end
end