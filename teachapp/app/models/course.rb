class Course < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true}
  validates :image, presence: true
  validates :video, presence: true
end

