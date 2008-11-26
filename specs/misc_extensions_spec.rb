require File.dirname(__FILE__) + '/spec_helper'

describe String, "periodify" do
  it "should add a period to the end of a string" do
    "string".periodify.should == "string."
  end
  
  it "should not modify string if already ends in period" do
    "string.".periodify.should == "string."
  end
end