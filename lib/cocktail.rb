class Cocktail
attr_accessor :strDrink, :strGlass, :strInstructions, :strIngredient1, :strIngredient2, :strMeasure, :strMeasure2
@@all = []
#URL = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=" #add IDnumber
    def initialize(drink_hash)
        #binding.pry
        drink_hash["drinks"][0].each do |k, v|
            self.send("#{k}=",v) if self.respond_to?("#{k}=")
        end
        @@all << self
    end
    def self.all
        @@all
    end
end