class Song < ApplicationRecord
  has_many :albums
  validates :title, presence: true
  validates :title, uniqueness: true
end
