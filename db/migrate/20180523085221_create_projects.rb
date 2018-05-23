class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :name2
      t.string :category
      t.integer :ranking
      t.string :date
      t.text :presentation
      t.text :commentary
      t.string :photo

      t.timestamps
    end
  end
end
