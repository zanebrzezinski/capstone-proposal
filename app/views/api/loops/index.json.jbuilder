json.array!(@loops) do |loop|
  json.id loop.id
  json.title loop.title
  json.url loop.loop_video
  json.author_id loop.author_id
  json.author loop.author.username
  json.profile_picture asset_path(loop.author.profile_picture)
  json.created_at loop.created_at
  json.likes do
    json.array(loop.likings) do |liking|
      json.user liking.username
    end
  end
end
