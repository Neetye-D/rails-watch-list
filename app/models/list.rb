class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true, presence: true
end
# has a name
#   name cannot be blank (FAILED - 7)
#   name is unique (FAILED - 8)
#   has many bookmarks (FAILED - 9)
#   has many movies (FAILED - 10)
#   should destroy child saved movies when destroying self (FAILED - 11)
