class Ration < ActiveRecord::Base
  belongs_to :user
  validates :calories, numericality: { greater_than: 0 }
  validates :proteins, numericality: { greater_than: 0 }
  validates :fats, numericality: { greater_than: 0 }
  validates :carbohydrates, numericality: { greater_than: 0 }
end
