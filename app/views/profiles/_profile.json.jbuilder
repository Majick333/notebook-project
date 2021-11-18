json.extract! profile, :id, :screen_name, :profile_picture, :friends, :created_at, :updated_at
json.url profile_url(profile, format: :json)
