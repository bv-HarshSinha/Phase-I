class User < ApplicationRecord
  has_many :articles
  validates :name, presence: true
  validates :email, uniqueness: true
end
