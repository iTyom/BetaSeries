class Note < ApplicationRecord
  belongs_to :user
  belongs_to :episode

  validates :user, presence: true
  validates :episode, presence: true
  validates :comment, length: { minimum: 2 }
  validates :note, length: { in: 0..5 }
end
