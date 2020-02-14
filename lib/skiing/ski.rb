class Ski 
  
  attr_accessor :name, :stats 
  
  @@all = []
  
    def initialize(name, stats)
      @name = name 
      @stats = stats 
      @@all << self 
    end 
    
    def self.all 
      @@all
    end 
    
    def self.scrape_data
      doc= Nokogiri::HTML(open("https://www.uncovercolorado.com/ski-resorts-in-colorado/"))
      section = doc.css("div.entry-content")
      section.each do |s|
        headers = s.css("h2")
        info = s.css("ul")
        headers.each_with_index do |h, i|
          name = h.text
          stats = info[i].text 
          Ski.new(name, stats)  
        end
      end
    end
    
    def self.find_area(input)
      self.all[input-1]
    end
end 

