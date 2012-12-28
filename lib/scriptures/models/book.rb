module Scriptures
  class Book
    include DataMapper::Resource

    storage_names[:default] = 'books'

    property :id,           Integer, :key => true
    property :volume_id,    Integer
    property :title,        String
    property :proper_title, String
    property :subtitle,     String
    property :abbreviation, String
    property :idx,          String
    property :jst,          String

    has n, :chapters
    belongs_to :volume
  end
end