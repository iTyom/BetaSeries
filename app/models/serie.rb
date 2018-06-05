class Serie < ApplicationRecord
  has_many :seasons
  has_many :bookmarks
    has_many :userEpisodeSerie
  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
  validates :name, presence: true
end
