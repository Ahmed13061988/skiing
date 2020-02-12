class Ski 
  
  attr_accessor :name, :info 
  @@all = []
   
    def initialize
      @name = name 
      @info = info 
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
    def self.scrape_info
      doc = Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
      ski_info = self.new
      info=doc.css("ul")
      a= info.map{|c| c.text.strip}
    end 
    def self.scrape_details
      doc= Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
      ski_details = self.new
      details=doc.css("p")
      b=details.map{|d| d.text.strip}
    end 

end 
