require 'spec_helper'

describe Scriptures do
    it "returns scriptures on search" do
      verse = Scriptures.search("faith").first.scripture
      verse.should == "My servant Moses is not so, who is faithful in all mine house."

      count = Scriptures.search("faith").count
      count.should eql(820)
    end
end