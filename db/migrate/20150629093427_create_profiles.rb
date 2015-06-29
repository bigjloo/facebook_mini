class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fullname
      t.date :date_of_birth
      t.integer :user_id
      t.timestamps null:false
    end
  end
end
