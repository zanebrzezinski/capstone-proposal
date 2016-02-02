json.extract! @user, :username, :id
json.profile_picture asset_path(@user.profile_picture)
json.loops do
  json.array!(@user.loops.reverse) do |loop|
    json.id loop.id
    json.title loop.title
    json.url loop.loop_video
    json.author loop.author.username
    json.profile_picture loop.author.profile_picture
    json.created_at loop.created_at
    json.likes do
      json.array(loop.likings) do |liking|
        json.user liking.username
      end
    end
  end
end
