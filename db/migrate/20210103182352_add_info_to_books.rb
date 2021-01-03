class AddInfoToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :author, :string
    add_column :books, :page_count,
    :integer
  end
end
