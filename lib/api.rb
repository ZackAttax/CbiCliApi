require 'net/http'
require 'open-uri'
require 'json'



class API
    URL = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=" 
 LOOKUPURL = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i="
 def get_data(spirit)
    # uri = URI.parse(URL+spirit)
    # response.body
    drink_hash = HTTParty.get(URL + spirit)
    #binding.pry
    drink_array = drink_hash["drinks"]
    drink_array.each do |drink_hash|
        new_hash = HTTParty.get(LOOKUPURL+drink_hash["idDrink"])
        Cocktail.new(new_hash)
        end
    #drink_hash.each_with_index do |drink, index|
     #   puts "#{index+1}. #{drink"
 end
end