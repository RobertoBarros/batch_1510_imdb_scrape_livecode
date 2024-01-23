require 'yaml'

require_relative 'scraper'

links = fetch_top_movie_urls

movies = []

links.each do |link|
  info = scrape_movie(link)

  # puts "Title: #{info[:title]}"
  # puts "Year: #{info[:year]}"
  # puts "Plot: #{info[:storyline]}"
  # puts '-' * 100

  movies << info
end


File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end
