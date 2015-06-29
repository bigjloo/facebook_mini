class FeedsTag < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :feed
  belongs_to :tag
end
