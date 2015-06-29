class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  has_one :profile
  has_many :feeds
  has_many :likes
end
