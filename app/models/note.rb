class Note < ApplicationRecord
  belongs_to :song
  validates :description, presence: true
end
