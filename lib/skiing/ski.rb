class Ski 
  
  attr_accessor :name, :info 
  
  def self.areas
   self.scrape_ski
  end
  
  def self.scrape_ski
    skiies = []
    
    skiies << self.scrape_resort2
    skiies << self.scrape_resort1
    skiies 
    
  end 
  def self.scrape_resort1
    doc = Nokogiri::HTML(open("https://www.skiresort.info/ski-resorts/colorado/"))
    ski = self.new
    ski.name = doc.search('h2.list').text
    ski.info = doc.search("table.info-table").text
    ski
  end 
  def self.scrape_resort2
    doc = Nokogiri::HTML(open("https://www.skiresort.info/ski-resort/telluride/"))
    ski=self.new  
    ski.name = doc.search("div.subnavi-header").text
    ski.info = doc.search("div.description").text
    ski
  end 
end 

