require 'uri'
require 'launchy'

if ARGV.empty?
  puts "Utilisation : ruby google_searcher.rb <recherche>"
  exit
end

search_query = ARGV.join(' ')
encoded_query = URI.encode(search_query)
google_url = "https://www.google.com/search?q=#{encoded_query}"

puts "URL de recherche Google : #{google_url}"

Launchy.open(google_url)
