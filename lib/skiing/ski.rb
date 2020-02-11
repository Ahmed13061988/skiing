class Ski 
  
  attr_accessor :name, :info 
  
  def self.areas
   self.scrape_ski
  end
  
  def self.scrape_ski
    skiies = []
    
    skiies << self.scrape_resort2
    # skiies << self.scrape_resort1
    skiies << self.scrape_resort3 
    skiies << self.scrape_resort4
    skiies 
    
  end 
#   def self.scrape_resort1
#     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_Colorado_ski_resorts"))
#     ski = self.new
#     name = doc.css("h1.firstHeading").text
    
#     #ski.name = doc.search('h2.list').text.strip
#     # # ski.info = doc.search("table.info-table").text.strip
#     # ski
# end 
  def self.scrape_resort2
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Arapahoe_Basin"))
    ski=self.new 
    name = doc.css("h1.firstHeading").text
    info = doc.css("p").text.strip
  end 
  def self.scrape_resort3 
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Aspen_Highlands"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
     info = doc.css("p").text.strip
  end 
  def self.scrape_resort4
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Aspen_Mountain_(ski_area)"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
     info = doc.css("p").text.strip
  end 
  
end 
