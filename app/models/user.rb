class User < ApplicationRecord
  has_many :articles
  validates :name, presence: true
  validates :email, presence: true
end
