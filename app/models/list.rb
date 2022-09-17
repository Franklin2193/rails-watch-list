class List < ApplicationRecord
  #has_many :movies
  has_many :movies, through: :bookmarks
  has_many :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
