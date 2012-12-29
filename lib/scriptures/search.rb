module Scriptures
  def self.search(query)
    Scriptures::Verse.all(:scripture.like => "%#{query}%")
  end
end