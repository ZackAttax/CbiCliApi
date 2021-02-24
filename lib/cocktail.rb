class Cocktail
attr_accessor :strDrink, :strGlass, :strInstructions, :strIngredient1, :strIngredient2, :strIngredient3, :strIngredient4, :strIngredient5, :strIngredient6, :strIngredient7, :strIngredient8, :strIngredient9, :strIngredient10, :strIngredient11, :strIngredient12, :strIngredient13, :strIngredient14, :strIngredient15,  :strMeasure1, :strMeasure2, :strMeasure3, :strMeasure4, :strMeasure5, :strMeasure6, :strMeasure7, :strMeasure8, :strMeasure9, :strMeasure10, :strMeasure11, :strMeasure12, :strMeasure13, :strMeasure14, :strMeasure15
@@all = []
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
    def self.clear_all
        @@all = []
    end
    def self.find_by_name(name)
    drink = self.all.find {|cocktail| cocktail.strDrink == name}
    #binding.pry
    drink.drink_specs
    end

    def drink_specs
        puts self.strDrink
        puts self.strGlass
        puts self.strInstructions
        puts self.strIngredient1  
        puts self.strMeasure1
        puts self.strIngredient2
        puts self.strMeasure2
        puts self.strIngredient3
        puts self.strMeasure3
        puts self.strIngredient4
        puts self.strMeasure4
        puts self.strIngredient5 
        puts self.strMeasure5
        puts self.strIngredient6
        puts self.strMeasure6
        puts self.strIngredient7 
        puts self.strMeasure7
        puts self.strIngredient8 
        puts self.strMeasure8
        puts self.strIngredient9
        puts self.strMeasure9
        puts self.strIngredient10
        puts self.strMeasure10
        puts self.strIngredient11
        puts self.strMeasure11
        puts self.strIngredient12
        puts self.strMeasure12
        puts self.strIngredient13
        puts self.strMeasure13
        puts self.strIngredient14
        puts self.strMeasure14
        puts self.strIngredient15
        puts self.strMeasure15
    end
    def self.cocktail_list
    Cocktail.all.each do |cocktail|
        puts "#{cocktail.strDrink}"
    end
    end
        
end