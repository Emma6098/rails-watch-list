class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validates_presence_of :movie, :list
  validates :comment, presence: true, length: { minimum: 6, message: "You have to put minimum 6 characters" }
  validates_uniqueness_of :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
