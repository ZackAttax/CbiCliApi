class CbiCliApi::CLI
 def call
    puts "Welcome user"
    puts "To find a cocktail, enter 'cocktail'"
    puts "if you have to operate heavy machinery, enter exit"
    menu
 end

 def menu
    input = gets.strip.downcase
    if input == "cocktail"
        spirit_list
    elsif input == "exit"
        goodbye
    else
        invalid_entry
    end
end
    def invalid_entry
        puts "Invalid entry, please try again."
        menu
    end

    def spirit_list
        # Cocktail.all.each_with_index do |cocktail, index|
        #     puts "#{index + 1}. #{cocktail.spirit}
        # end
        puts "Suggested Spirits:"
        puts "Vodka"
        puts "Gin"
        puts "Tequila"
        puts "Bourbon"
        puts "Rum"
        puts "What spirit would you like to imbibe?"
        spirit = gets.strip.downcase
        selected_spirit(spirit)

    end
    def goodbye
        puts "Thank you for stopping by, have a nice day!"
    end
    def selected_spirit(spirit)
        API.new.get_data(spirit)
        Cocktail.all.each do |cocktail|
           puts "#{cocktail.strDrink}"
           binding.pry
           puts "select you drink"
           drink = gets.strip.capitalize
        end

    end


end