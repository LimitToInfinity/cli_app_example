class Cli

    def main_menu
        puts "Welcome to my app!"
        username = gets.strip

        puts "Hi #{username}"
    end

    def show_cats
        puts "Here are all the cats:"

        Cat.all.each do |cat|
            puts "Breed: #{cat.breed}, Owner: #{cat.owner.name}\n"
        end
    end

    def select_cat
        puts "pick a cat breed"
        breed = gets.strip.downcase

        Cat.find_by(breed: breed)
    end

    def show_selected_cat
        cat = select_cat
        if cat
            puts "Here's your chosen cat!"
            puts "Breed: #{cat.breed}, Owner: #{cat.owner.name}\n"
        else
            puts "Sorry we couldn't find that cat breed"
        end 
    end
end