class AddBookIdAndUserIdToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :book_clubs, :book_id, :integer
    add_column :book_clubs, :creator_id, :integer
  end
end
