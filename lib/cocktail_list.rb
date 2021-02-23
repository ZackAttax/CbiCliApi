class CocktailList
    attr_accessor :strDrink, :idDrink
        @@all = []
    def initialize(drink_hash)
        drink_hash.each do |k, v|
            self.send("#{k}=",v) if self.respond_to?("#{k}=")
            Cocktail.new(strDrink, idDrink)
            @@all << self
        end
        #binding.pry
    end
    def self.all
    @@all
    end

end