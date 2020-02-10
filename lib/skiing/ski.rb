class Ski 
  
  attr_accessor :name, :url, :times
  
  def self.areas
   self.scrape_ski
  end
  
  def self.scrape_ski
    ski = []
    
    ski << self.scrape_resort
    ski 
    
  end 
  def self.scrape_resort1
    doc = Nokogiri::HTML(open("https://www.skiresort.info/ski-resorts/colorado/"))
    name = doc.search('h2.list').text
    times =doc.search("table.info-table").text
    binding.pry
  end 
  def self.scrape_resort2
    doc = Nokogiri::HTML(open("https://www.skiresort.info/ski-resort/telluride/"))
    name= 
    times= 
  
end 

