class AddSongsToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_reference :albums, :songs, foreign_key: true
  end
end
