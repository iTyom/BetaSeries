class UsersEpisodesSerie < ApplicationRecord
  belongs_to :user
  belongs_to :serie
  belongs_to :episode

  validates :user, presence: true
  validates :serie, presence: true
  validates :episode, presence: true
end
