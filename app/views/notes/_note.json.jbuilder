json.extract! note, :id, :song_id, :description, :created_at, :updated_at
json.url note_url(note, format: :json)
