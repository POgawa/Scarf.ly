class CreateScarves < ActiveRecord::Migration
  def change
    create_table :scarves do |t|
      t.string :title
      t.string :description
      t.integer :club_id
      t.integer :user_id

      t.timestamps
    end
  end
end
