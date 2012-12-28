module Scriptures
  class Chapter
    include DataMapper::Resource

    storage_names[:default] = 'chapters'

    property :id,           Integer, :key => true
    property :book_id,      Integer
    property :chapter,      Integer

    has n, :verses
    belongs_to :book
  end
end