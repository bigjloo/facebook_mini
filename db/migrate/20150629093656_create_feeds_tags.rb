class CreateFeedsTags < ActiveRecord::Migration
  def change
    create_table :feeds_tags, id: false do |t|
      t.belongs_to :feed, index: true
      t.belongs_to :tag, index: true
      t.timestamps null:false
    end
  end
end
