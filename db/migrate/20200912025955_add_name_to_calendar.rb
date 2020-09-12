class AddNameToCalendar < ActiveRecord::Migration[6.0]
  def change
    add_column :calendars, :name, :string
  end
end
