class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.string :first_name
      t.string :last_nameh
      t.timestamps
    end
  end
end
