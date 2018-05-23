class AddReferencesToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_reference :artworks, :project, foreign_key: true
  end
end
