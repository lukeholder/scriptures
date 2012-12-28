module Scriptures
  class Volume
    include DataMapper::Resource

    storage_names[:default] = 'volumes'

    property :id,           Integer, :key => true
    property :title,        String
    property :proper_title, String
    property :subtitle,     String
    property :abbreviation, String
    property :idx,          String

    has n, :books
  end
end