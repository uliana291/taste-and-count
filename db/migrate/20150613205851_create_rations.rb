class CreateRations < ActiveRecord::Migration
  def change
    create_table :rations do |t|
      t.integer :user_id
      t.float :calories
      t.float :proteins
      t.float :fats
      t.float :carbohydrates

      t.timestamps null: false
    end
  end
end
