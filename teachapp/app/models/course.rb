class Course < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :description, :category, :image, :video, :price
  validates :price, numericality: { only_integer: true}
end

