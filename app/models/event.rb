class Event < ApplicationRecord
   default_scope { order(id: :desc)}

   mount_uploader :photo, PhotoUploader


   CATEGORIES =%w( last other )

  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :localisation, presence: true
end
