class Info < ApplicationRecord
default_scope { order(id: :desc)}


CHOICES =%w( SHOWING RESIDENCE SCENOGRAPHY TEACHING PRIZE MEDIAS)




  validates :category, inclusion: { in: CHOICES }, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :localisation, presence: true
end
