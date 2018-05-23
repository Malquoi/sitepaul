class Text < ApplicationRecord
    default_scope { order(id: :desc)}

   validates :content, presence: true
  validates :author, presence: true
end
