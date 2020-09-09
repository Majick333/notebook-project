class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :due_date
      t.datetime :start_time
      t.datetime :finish_time
      t.string :location
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end
end
