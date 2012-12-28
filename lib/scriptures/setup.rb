module Scriptures
    DataMapper.setup(:default, "sqlite3:///#{File.expand_path('../../..', __FILE__)}/scriptures.db")
end

