class BestWine::CLI

  def call
    BestWine::Scraper.scrape_wines
    puts "Welcome to the ultimate wine app. Here are the top #{BestWine::Wine.all.size} wines of 2017:"
    list_wine
    menu
  end

  def list_wine
    BestWine::Wine.all.each do |wine|
      puts "#{wine.name}"
    end
  end

  def menu
    puts "Enter the number of the wine you would like to learn more about."
    input = gets.strip
    if input.to_i > 0 and input.to_i <= BestWine::Wine.all.size
      chosen_wine = BestWine::Wine.all[input.to_i-1]
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
      puts "You entered an invalid number. Please enter a valid number between 1 and #{BestWine::Wine.all.size} or exit."
      menu
    end
  end

end
