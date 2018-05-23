class Project < ApplicationRecord
  default_scope { order(ranking: :asc)}

has_many :artworks
mount_uploader :photo, PhotoUploader

CATEGORIES =%w( drawing painting virtual_reality other_project )


def previous
  projects = self.class.where.not({id: '1'})
  projects.where('ranking < ?', self.ranking).last

end

def next
  projects = self.class.where.not({id: '1'})
   projects.where('ranking > ?', self.ranking).first
end

def previous_vr

  projects = self.class.where({category: 'virtual_reality'})

  projects.where('ranking < ?', self.ranking).last
end

def next_vr

  projects = self.class.where({category: 'virtual_reality'})
   projects.where('ranking > ?', self.ranking).first
end



  validates :name, presence: true
  validates :presentation, presence: true
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :photo, presence: true
  validates :date, presence: true
  validates :ranking, presence: true
end



