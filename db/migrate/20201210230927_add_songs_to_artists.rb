class AddSongsToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :songs, foreign_key: true
  end
end
