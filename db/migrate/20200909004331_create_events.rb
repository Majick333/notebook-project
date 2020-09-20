class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.belongs_to :user
      t.belongs_to :calendar
      t.string :name
      t.date :due_date
      t.datetime :start_time
      t.datetime :finish_time
      t.string :location
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end
end
