class Cocktail
attr_accessor :strDrink, :strGlass, :strInstructions, :strIngredient1, :strIngredient2, :strIngredient3, :strIngredient4, :strIngredient5, :strIngredient6, :strIngredient7, :strIngredient8, :strIngredient9, :strIngredient10, :strIngredient11, :strIngredient12, :strIngredient13, :strIngredient14, :strIngredient15,  :strMeasure1, :strMeasure2, :strMeasure3, :strMeasure4, :strMeasure5, :strMeasure6, :strMeasure7, :strMeasure8, :strMeasure9, :strMeasure10, :strMeasure11, :strMeasure12, :strMeasure13, :strMeasure14, :strMeasure15, :drink_number
@@all = []
    def initialize(drink_hash, drink_number)
        #binding.pry
        @drink_number = drink_number
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
    def self.find_by_number(number)
     if drink = self.all.find {|cocktail| cocktail.drink_number == number}
        drink.drink_specs
    end
    end

    def drink_specs
        puts self.strDrink
        puts self.strGlass
        puts self.strInstructions
        puts "#{self.strIngredient1} - #{self.strMeasure1}"
        puts "#{self.strIngredient2} - #{self.strMeasure2}"
        puts "#{self.strIngredient3} - #{self.strMeasure3}"
        puts "#{self.strIngredient4} - #{self.strMeasure4}"
        puts "#{self.strIngredient5} - #{self.strMeasure5}"
        puts "#{self.strIngredient6} - #{self.strMeasure6}"
        puts "#{self.strIngredient7} - #{self.strMeasure7}"
        # puts "#{self.strIngredient8} - #{self.strMeasure8}"
        # puts "#{self.strIngredient9} - #{self.strMeasure9}"
        # puts "#{self.strIngredient10} - #{self.strMeasure10}"
        # puts "#{self.strIngredient11} - #{self.strMeasure11}"
        # puts "#{self.strIngredient12} - #{self.strMeasure12}"
        # puts "#{self.strIngredient13} - #{self.strMeasure13}"
        # puts "#{self.strIngredient14} - #{self.strMeasure14}"
        # puts "#{self.strIngredient15} - #{self.strMeasure15}"
    end
    def self.cocktail_list_with_number
    Cocktail.all.each do |cocktail|
        puts "#{cocktail.drink_number}. #{cocktail.strDrink}"
    end
    end
        
end