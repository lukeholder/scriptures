require 'spec_helper'

describe Scriptures::Volume do
    it "should connect to the data source and return a volume's abbreviation" do
      Scriptures::Volume.first.abbreviation.should eq("OT")
    end
end

describe Scriptures::Book do
    it "should connect to the data source and return a book proper_title" do
      Scriptures::Book.first.proper_title.should eq("The First Book of Moses called Genesis")
    end

    it "should return the total number of chapters given any book" do
      genesis = Scriptures::Book.first
      genesis.chapters.count.should eql(50)

      exodus = Scriptures::Book.get!(2) 
      exodus.chapters.count.should eql(40)
    end
end

describe Scriptures::Chapter do
    it "should connect to the data source and return a chapters id" do
      Scriptures::Book.first.id.should eq(1)
    end
end


describe Scriptures::Verse do
    it "should connect to the data source and return a verse" do
      Scriptures::Verse.first.scripture.should eq("IN the beginning God created the heaven and the earth.")
    end
end

