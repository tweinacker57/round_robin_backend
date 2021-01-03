class RemoveCreatorId < ActiveRecord::Migration[6.0]
  def change
    remove_column :book_clubs, :creator_id, :string
  end
end
