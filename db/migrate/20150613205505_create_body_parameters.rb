class CreateBodyParameters < ActiveRecord::Migration
  def change
    create_table :body_parameters do |t|
      t.integer :user_id
      t.float :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end
