class User < ApplicationRecord
  validates :username, presence: true
  has_many :notes
  has_many :bookmarks
  has_many :userEpisodeSerie

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
