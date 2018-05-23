class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :localisation
      t.string :information
      t.string :category
      t.string :photo
      t.timestamps
    end
  end
end
