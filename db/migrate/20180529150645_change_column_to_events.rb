class ChangeColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :name, :text
  end
end
