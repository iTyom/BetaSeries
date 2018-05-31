class Episode < ApplicationRecord
  belongs_to :season
  has_many :notes

  validates :number, presence: true
end
