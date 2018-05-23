class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.text :content
      t.string :author
      t.text :presentation_author

      t.timestamps
    end
  end
end
