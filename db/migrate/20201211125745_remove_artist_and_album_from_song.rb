class RemoveArtistAndAlbumFromSong < ActiveRecord::Migration[5.2]
  def change
    remove_column :songs, :album
    remove_column :songs, :artist
  end
end
