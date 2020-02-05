class Skiing::Ski 
  attr_accessor :name , :url 

  def self.areas
  ski_area1 = Ski.new 
  ski_area1.name = "Arapahoe Basin"
  ski_area1.url = "https://en.wikipedia.org/wiki/Arapahoe_Basin"
  ski_area2 = Ski.new 
  ski_area2 = "Aspen Highlands"
  ski_area2.url = "https://en.wikipedia.org/wiki/Aspen_Highlands"
  ski_area3 = Ski.new 
  ski_area3 = "Aspen Mountain"
  ski_area3.url = "https://en.wikipedia.org/wiki/Aspen_Mountain_(ski_area)"
  ski_area4 = Ski.new 
  ski_area4 = "Beaver Creek Resort"
  ski_area4.url = "https://en.wikipedia.org/wiki/Beaver_Creek_Resort"
  ski_area5 = Ski.new 
  ski_area5 = "Breckenridge Ski Resort"
  ski_area5.url = "https://en.wikipedia.org/wiki/Breckenridge_Ski_Resort"
  ski_area6 = Ski.new 
  ski_area6 = "Buttermilk "
  ski_area6.url = "https://en.wikipedia.org/wiki/Buttermilk_(ski_area)"
  ski_area7 = Ski.new 
  ski_area7 = "Copper Mountain"
  ski_area7.url = "https://en.wikipedia.org/wiki/Copper_Mountain_(Colorado)"
  [ski_area1,ski_area2,ski_area3,ski_area4,ski_area5,ski_area6,ski_area7]
end 


end 