require "scriptures/version"
require "data_mapper"

module Scriptures

  DataMapper.setup(:default, "sqlite3:///#{File.expand_path(File.dirname(__FILE__))}/scriptures.db")

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
  end

  class Chapter
    include DataMapper::Resource

    storage_names[:default] = 'chapters'

    property :id,           Integer, :key => true
    property :book_id,      Integer
    property :chapter,      Integer

    has n, :verses
  end

  class Verse
    include DataMapper::Resource

    storage_names[:default] = 'verses'

    property :id,           Integer, :key => true
    property :chapter_id,   Integer
    property :verse,        Integer
    property :scripture,    Text
    property :pilcrow,      Boolean

    belongs_to :chapter

  end

  class Volume
    include DataMapper::Resource

    storage_names[:default] = 'volumes'

    property :id,           Integer, :key => true
    property :title,        String
    property :proper_title, String
    property :subtitle,     String
    property :abbreviation, String
    property :idx,          String

  end

end
