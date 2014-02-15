class User < ActiveRecord::Base
  has_many :tiles
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :email, presence: true, uniqueness: true
  has_secure_password
end
