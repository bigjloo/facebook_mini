class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :feeds_tags
  has_many :feeds, :through => :feeds_tags
end
