class BestWine::CLI

  def call
    BestWine::Scraper.new.scrape_wines
    puts "Welcome to the ultimate wine app"
    list_wine
    menu
  end

  def list_wine
    @wines = BestWine::Scraper.scrape_wines
    @wines.each do |wine|
      puts "#{wine.name}"
    end
  end

  def menu
    puts "Enter the number you would like to learn more about."
    input = gets.strip
    if input.to_i > 0 and input.to_i < 21
      chosen_wine = @wines[input.to_i-1]
      puts "#{chosen_wine.description}"
    else
      puts "You entered an invalid number. Please enter a valid number between 1 and 20 or exit."
      menu
    end
  end

end
