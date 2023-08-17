class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validates_presence_of :movie, :list
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, uniqueness: { scope: :list_id }
end
