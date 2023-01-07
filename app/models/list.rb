class List < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
