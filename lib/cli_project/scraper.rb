class BestWine::Scraper

attr_accessor :name, :description

@@all = []

  def self.scrape_wines
    doc = Nokogiri::HTML(open("https://www.totalwine.com/top-20-wines-of-2017"))
    doc.css(".text").each do |wine|
      wine_info = self.new
      wine_info.name = wine.css("h4").text
      wine_info.description = wine.css("p").text
      @@all << wine_info
    end
    @@all
  end

end
