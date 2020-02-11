class Ski 
  
  attr_accessor :name, :info 
  def initialize
    @name = name 
    @info = info 
  end 
  
  def self.areas
   self.scrape_ski
  end
  
  def self.scrape_ski
    skiies = []
    
    skiies << self.scrape_resort2
    skiies << self.scrape_resort3 
    skiies << self.scrape_resort4
    skiies << self.scrape_resort5
    skiies << self.scrape_resort6
    skiies << self.scrape_resort7
    skiies << self.scrape_resort8
    skiies 
    
  end 
   
  def self.scrape_resort2
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Arapahoe_Basin"))
    ski=self.new 
    name = doc.css("h1.firstHeading").text
    info = doc.css("p").text.strip 
    name
  end 
  def self.scrape_resort3 
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Aspen_Highlands"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
    info = doc.css("p").text.strip
    name
  end 
  def self.scrape_resort4
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Aspen_Mountain_(ski_area)"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
   info = doc.css("p").text.strip
   name 
  end 
  def self.scrape_resort5
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Beaver_Creek_Resort"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
   info = doc.css("p").text.strip
 end 
 def self.scrape_resort6
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Breckenridge_Ski_Resort"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
   info = doc.css("p").text.strip
 end 
 def self.scrape_resort7
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Buttermilk_(ski_area)"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
   info = doc.css("p").text.strip
 end 
 def self.scrape_resort8
     doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Copper_Mountain_(Colorado)"))
     ski = self.new 
     name = doc.css("h1.firstHeading").text
   info = doc.css("p").text.strip
 end 

end 
