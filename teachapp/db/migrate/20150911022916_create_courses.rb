class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string "title"
      t.string "description"
      t.string "image"
      t.string "category"
      t.integer "price"
      t.string "video"

      t.timestamps null: false
    end
  end
end
