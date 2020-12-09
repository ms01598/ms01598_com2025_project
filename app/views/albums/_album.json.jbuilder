json.extract! album, :id, :song_id, :title, :number_of_songs, :release_year, :created_at, :updated_at
json.url album_url(album, format: :json)
