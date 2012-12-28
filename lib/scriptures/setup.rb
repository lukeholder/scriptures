module Scriptures
  module Config
    DataMapper.setup(:default, "sqlite3:///#{File.expand_path(File.dirname(__FILE__))}/../scriptures.db")
  end
end

