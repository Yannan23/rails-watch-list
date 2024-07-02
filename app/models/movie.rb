class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  has_many :lists, through: :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
