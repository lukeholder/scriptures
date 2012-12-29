require 'spec_helper'

# I made the decision to use the live sqlite db for tests as they are apart
# of the actual gem and testing their values seemed to make sense. Why
# mock the actual data? Suggestions: lukemh@gmail.com

describe Scriptures::Volume do
    it "should return a volume's abbreviation" do
      Scriptures::Volume.first.abbreviation.should eq("OT")
    end
    it "should return total number of books in a volume" do
      volume = Scriptures::Volume.first(:abbreviation => 'BoM')
      volume.books.count.should eql(15)
    end
end

describe Scriptures::Book do
    it "should return a book proper_title" do
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
    it "should return a chapters id" do
      Scriptures::Chapter.first.id.should eq(1)
    end

    it "should return the total number of verses in a chapter" do
      volume = Scriptures::Volume.first(:abbreviation => 'BoM')
      book = volume.books.first
      chapter = book.chapters.first
      chapter.verses.count.should eql(20)
    end
end


describe Scriptures::Verse do
    it "should return a verse" do
      Scriptures::Verse.first.scripture.should eq("IN the beginning God created the heaven and the earth.")
    end

    it "knows what chapter, book, and volume it belongs to" do
      volume = Scriptures::Volume.first(:abbreviation => 'BoM')
      book = volume.books.first
      chapter = book.chapters.first
      verse = chapter.verses.first
      verse.scripture.should == "I, Nephi, having been born of goodly parents, therefore I was taught somewhat in all the learning of my father; and having seen many afflictions in the course of my days, nevertheless, having been highly favored of the Lord in all my days; yea, having had a great knowledge of the goodness and the mysteries of God, therefore I make a record of my proceedings in my days."
      verse.chapter.id == "1190"
      verse.chapter.book.title.should == "1 Nephi"
      verse.chapter.book.volume.abbreviation.should == "BoM"
    end

end

