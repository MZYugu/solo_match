class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :events, :link, false
  end
end
