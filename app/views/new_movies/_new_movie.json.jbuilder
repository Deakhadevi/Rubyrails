json.extract! new_movie, :id, :title, :description, :director, :rating, :created_at, :updated_at
json.url new_movie_url(new_movie, format: :json)
