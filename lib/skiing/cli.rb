class Skiing::CLI 
  def call 
    menu 
    list_ski
    farewell 
  end
  
  def list_ski
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
     input = nil 
     while input != "exit"
     puts "Please selcet the ski area you intrest in."
     input = gets.strip.downcase 
     case input 
     when"1"
     puts "more info about ..."
     when "2"
     puts "more info about ..."
     when "list"
       list_ski 
     else 
       puts "Invalid input !"
     end 
   end
   end 
   def farewell 
     puts "Have a great time in Colorado !!"
   end 
end 