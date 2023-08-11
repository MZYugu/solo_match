class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name, null: false
      t.date :openig_date, null: false
      t.date :last_date, null: false
      t.integer :genre_id, null: false
      t.string :link, null: false
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
