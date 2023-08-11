class RenameBithdayColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :bithday, :birthday
  end
end
