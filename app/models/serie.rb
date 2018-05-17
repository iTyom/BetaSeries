class Serie < ApplicationRecord
  has_many :seasons
  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
  validates :name, presence: true
end
