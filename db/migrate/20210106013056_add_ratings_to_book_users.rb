class AddRatingsToBookUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :book_users, :rating, :integer
  end
end
