class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :comment, length: { minimum: 6, too_short: '6 characters is the minimum allowed' }
  validates :movie_id, uniqueness: { scope: :list_id }
end
