class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
  has_many :bookmarks
end

# has a title and an overview
# title is unique (FAILED - 12)
# title cannot be blank (FAILED - 13)
# overview cannot be blank (FAILED - 14)
# has many bookmarks (FAILED - 15)
# should not be able to destroy self if has bookmarks children (FAILED - 16)
