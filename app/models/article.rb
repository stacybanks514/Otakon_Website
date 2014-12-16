class Article < ActiveRecord::Base
  scope :most_recent, -> { limit(3).order('created_at desc') }
end
