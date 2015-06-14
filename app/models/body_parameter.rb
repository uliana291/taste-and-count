class BodyParameter < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :height, :weight, numericality: { greater_than: 0 }
end
