class Feed < ActiveRecord::Base
  # Remember to create a migration!
  has_many :feeds_tags
  has_many :tags, :through => :feeds_tags
  has_many :comments
  has_many :likes
  belongs_to :user
end
