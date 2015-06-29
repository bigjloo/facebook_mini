class UpdateFeeds < ActiveRecord::Migration
  def change
    add_column :feeds, :user_id, :integer
  end
end
