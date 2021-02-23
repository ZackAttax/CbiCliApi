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

        puts "1. Vodka"
        puts "2. Gin"
        puts "3. Tequila"
        puts "4. Bourbon"
        puts "5. Rum"
        puts "Which spirit would you like to imbibe?"
        spirit = gets.strip.downcase
        
        spirit_selection(spirit)
    end
    def goodbye
        puts "Thank you for stopping by, have a nice day!"
    end
    def spirit_selection(spirit)
        #go through spirit array, find method to find selected spirit or index number
        puts "#{spirit}"

    end


end