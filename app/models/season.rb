class Season < ApplicationRecord
  belongs_to :serie

  validates :number, presence: true
end
