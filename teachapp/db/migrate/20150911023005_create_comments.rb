class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string "review"
      t.integer "star"
      t.timestamps null: false
    end
  end
end
