class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :venue_name,     null: false
      t.integer :prefecture_id, null: false
      t.string :address,        null: false
      t.string :link,           null: false

      t.timestamps
    end
  end
end
