class Episode < ApplicationRecord
  belongs_to :season
  has_many :notes
<<<<<<< HEAD
  has_many :userEpisodeSerie
=======
>>>>>>> master

  validates :number, presence: true
end
