class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.integer :user_id

      t.string :screen_name
      t.string :profile_picture
      t.string :friends
      

      t.timestamps
    end
  end
end
