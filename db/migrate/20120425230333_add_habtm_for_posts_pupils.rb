class AddHabtmForPostsPupils < ActiveRecord::Migration
  def change
    create_table :posts_pupils, :id => false do |t|
      t.integer :post_id
      t.integer :pupil_id
    end
  end
end