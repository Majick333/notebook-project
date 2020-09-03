class AddNotesToNotebooks < ActiveRecord::Migration[6.0]
  def change
    add_column :notebooks, :note_id, :integer
  end
end
