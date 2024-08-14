require 'net/http'
require 'json'

def get_characters
  url = URI('https://api.example.com/characters')
  response = Net::HTTP.get(url)
  JSON.parse(response)
end

