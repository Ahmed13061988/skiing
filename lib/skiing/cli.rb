class Skiing::CLI 
  def call 
    
    menu 
    list 
   
  end
  
  def list 
    puts "This is a list of the skies areas in Colorado:"
    puts "
      Arapahoe Basin
      Aspen Highlands (Aspen)
      Aspen Mountain (Aspen) 
      Beaver Creek
      Breckenridge
      Buttermilk (Aspen)
      Chapman Hill Ski Area
      Copper Mountain
      Cranor Ski Area
      Crested Butte "
  end 
   def menu 
     puts "Please selcet the ski area you intrest in"
     input = get.strip.downcase 
   end 
  
end 