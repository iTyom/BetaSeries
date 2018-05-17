class Serie < ApplicationRecord
has_many :seasons

  validates :name, presence: true
end
