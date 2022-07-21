class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
