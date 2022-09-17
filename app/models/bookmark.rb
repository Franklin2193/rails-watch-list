class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  #validates :comment, length: { minimum: 6 }

  #validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6, too_short: 'Is too short' }
  validates :movie_id, uniqueness: { scope: :list_id }
end
