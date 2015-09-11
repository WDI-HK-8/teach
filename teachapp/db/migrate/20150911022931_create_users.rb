class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name"
      t.string "email"
      t.string "pwd"
      t.text "bio"
      t.boolean "instructor"

      t.timestamps null: false
    end
  end
end
