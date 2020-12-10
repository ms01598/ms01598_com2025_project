class Album < ApplicationRecord
  belongs_to :song
  validates :title, :number_of_songs, :release_year, presence: true
end
