class Book < ApplicationRecord
  # belongs_to :club
  has_many :book_users
  has_many :users, through: :book_users
end
