json.array!(@musics) do |music|
  json.extract! music, :id, :title, :artist, :song, :user_id
  json.url music_url(music, format: :json)
end
