class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :number_of_songs
      t.integer :release_year

      t.timestamps
    end
  end
end
