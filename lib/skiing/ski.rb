class Ski 
  
  attr_accessor :name, :info 
  @@all = []
 
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.scrape_resort
    doc = Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
    ski=self.new 
    name = doc.css("h2")
    the_name = name.map{|n| n.text.strip}
  end 
 
end 
