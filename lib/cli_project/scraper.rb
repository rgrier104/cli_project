class BestWine::Scraper

  def self.scrape_wines
    doc = Nokogiri::HTML(open("https://www.totalwine.com/top-20-wines-of-2017"))
    wines = []
    doc.css(".text").each do |wine|
      wine_info = {}
      wine_info[:name] = wine.css("h4").text
      wine_info[:description] = wine.css("p").text
      wines << wine_info
    end
    wines
  end

end
