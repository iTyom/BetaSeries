class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :serie

  validates :user, presence: true
  validates :serie, presence: true
end
