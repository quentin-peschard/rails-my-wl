require 'json'
require 'open-uri'

Movie.destroy_all
List.destroy_all

puts 'destroying data...'

url = "https://api.themoviedb.org/3/trending/movie/week?api_key=#{ENV['TMDB_API_KEY']}"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

puts 'getting data...'

movies['results'].each do |movie|
  Movie.create!({ title: movie['original_title'],
                  overview: movie['overview'],
                  poster_url: "https://image.tmdb.org/t/p/original/#{movie['poster_path']}" })
end

puts 'done !'
