class BestWine::CLI

  def call
    @wine_list = BestWine::Scraper.scrape_wines
    puts "Welcome to the ultimate wine app. Here are the top 20 wines of 2017:"
    list_wine
    menu
  end

  def list_wine
    @wine_list.each do |wine|
      puts "#{wine.name}"
    end
  end

  def menu
    puts "Enter the number of the wine you would like to learn more about."
    input = gets.strip
    if input.to_i > 0 and input.to_i < 21
      chosen_wine = @wine_list[input.to_i-1]
      puts "#{chosen_wine.name}: #{chosen_wine.description}"
      puts "Would you like to learn about another wine? (y/n)"
      input2 = gets.strip.downcase
        if input2 == "y"
          list_wine
          menu
        else
          exit
        end
    else
      puts "You entered an invalid number. Please enter a valid number between 1 and 20 or exit."
      menu
    end
  end

end
