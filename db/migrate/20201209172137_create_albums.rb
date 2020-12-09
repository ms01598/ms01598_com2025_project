class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.belongs_to :song, index:true, foreign_key: true, null: false
      t.string :title, null:false
      t.integer :number_of_songs
      t.integer :release_year

      t.timestamps
    end
  end
end
