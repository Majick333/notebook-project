class AddDateToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :date, :date
  end
end
