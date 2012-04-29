class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :observation
      t.string :type
      t.string :user_id
      t.date :observed_on
      t.timestamps
    end
  end
end
