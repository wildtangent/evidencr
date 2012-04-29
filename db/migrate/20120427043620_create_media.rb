class CreateMedia < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :file
      t.string :user_id
      t.timestamps
    end
    
    create_table :posts_uploads do |t|
      t.integer :post_id
      t.integer :upload_id
    end
    
    add_index :posts_uploads, [:post_id, :upload_id]
    add_index :uploads, :user_id
  end
end
