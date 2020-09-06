class AddNotebooksToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notebook_id, :integer
  end
end
