class RemoveSongFromAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_reference :albums, :song
  end
end
