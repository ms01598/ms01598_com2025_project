class Song < ApplicationRecord
  has_one :album
  validates :title, presence: true
  validates :title, uniqueness: true
end
