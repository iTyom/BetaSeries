class Season < ApplicationRecord
  belongs_to :serie
  mount_uploader :photo, PhotoUploader
  has_many :episodes

  validates :photo, presence: true
  validates :number, presence: true
end
