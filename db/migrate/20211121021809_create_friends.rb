class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.string :screen_name

      t.timestamps
    end
  end
end
