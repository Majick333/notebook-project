class AddNotebooksToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :notebooks, :category_id, :integer
  end
end
