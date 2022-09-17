class List < ApplicationRecord
  # has_many :bookmarks
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # has_many :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
