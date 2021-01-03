class User < ApplicationRecord
  has_many :book_clubs
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
