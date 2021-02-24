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
           select_drink
        end
    def select_drink
        Cocktail.cocktail_list_with_number
           puts "select your drink number"
           drink_number = gets.to_i 
            #new_drink = drink.split.map {|x| x.capitalize}.join(" ")
           puts "loading drink............"
           puts " "
           if Cocktail.find_by_number(drink_number)
                another_round
           else #puts "Input not understood."
            another_round
           end
    end

    def another_round
        puts "Another Round? Y or N"
       input = gets.strip.capitalize
        if input == "N"   
             goodbye
        else input =="Y"
         puts "Same spirit? Y or N"
         next_round
            
        end
    end
    def next_round
        input = gets.strip.capitalize
        if input == "N"
        another_round_new_spirit
        elsif input == "Y"
            select_drink
        else
            next_round
        end
    end
    def another_round_new_spirit
        Cocktail.clear_all
        spirit_list
    end
end