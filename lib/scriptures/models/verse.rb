module Scriptures
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
end