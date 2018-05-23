class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :ranking
      t.string :category
      t.string :description
      t.string :format
      t.string :date
      t.text :commentary
      t.string :photo
      t.timestamps
    end
  end
end
