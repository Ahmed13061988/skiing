class Ski 
  
  attr_accessor :name, :info 
  @@all = []
   
   def initialize
     @name = name 
     @info = info 
     @@all << self 
   end 
  # def save 
  #   @@all << self
  # end 
  
  def self.all 
    @@all 
  end 
  
  def self.scrape_resort
    doc = Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
    ski=self.new 
    name = doc.css("h2")
    the_name = name.map{|n| n.text.strip}
    # info = doc.css("ul")
    # the_info =info.map{|i| i.text.strip}
    # binding.pry
  end 
  def self.scrape_resort_info
    doc = Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
    ski = self.new
    info = doc.css("ul")
    the_info =info.map{|i| i.text.strip}
  end 
    
 
end 
