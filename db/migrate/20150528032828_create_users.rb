class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userID
      t.float :latitude
      t.float :longitude
      t.string :smoker
      t.string :transport
      t.string :marital_status
      t.integer :birth_year
      t.string :color
      t.integer :weight
      t.string :budget
      t.float :height

      t.timestamps null: false
    end
  end
end
