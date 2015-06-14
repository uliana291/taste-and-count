class User < ActiveRecord::Base
  has_one :body_parameter
  has_one :ration
  validates :nickname, :email, presence: true
end
