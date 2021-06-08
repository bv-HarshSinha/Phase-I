class User < ApplicationRecord
  has_many :articles
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
end
