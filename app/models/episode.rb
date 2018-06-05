class Episode < ApplicationRecord
  belongs_to :season
  has_many :notes
  has_many :userEpisodeSerie

  validates :number, presence: true
end
