module Scriptures
  class Chapter
    include DataMapper::Resource

    storage_names[:default] = 'chapters'

    property :id,           Integer, :key => true
    property :book_id,      Integer
    property :chapter,      Integer

    has n, :verses
    belongs_to :book

    before :destroy do |i|
       throw :halt
    end

    before :save do |i|
       throw :halt
    end

    before :create do |i|
       throw :halt
    end

    before :update do |i|
       throw :halt
    end

  end
end