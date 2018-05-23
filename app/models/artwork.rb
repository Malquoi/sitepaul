class Artwork < ApplicationRecord
  belongs_to :project

default_scope { order(ranking: :asc)}




  mount_uploader :photo, PhotoUploader

  CATEGORIES2 =%w( artwork illustration )

def previous
  artworks = self.class.where('project_id = ?', self.project_id )
  artworks.where('ranking < ?', self.ranking).last
end

def next
  artworks = self.class.where('project_id = ?', self.project_id )

  artworks.where('ranking > ?', self.ranking).first

end

validates :title, presence: true
  validates :description, presence: true
  validates :ranking, presence: true
  validates :date, presence: true
  validates :project_id, presence:true
  validates :category, inclusion: { in: CATEGORIES2 }, presence: true

end




