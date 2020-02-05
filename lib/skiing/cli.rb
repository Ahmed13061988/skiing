
class Skiing::CLI 
  def call 
    menu 
  end
  
  def list_ski
    # puts "This is a list of the skies areas in Colorado:"
    # puts "
    #   Arapahoe Basin
    #   Aspen Highlands (Aspen)
    #   Aspen Mountain (Aspen) 
    #   Beaver Creek
    #   Breckenridge
    #   Buttermilk (Aspen)
    # puts   "Chapman Hill Ski Area"
    #   Copper Mountain
    #   Cranor Ski Area
    #   Crested Butte "
       @skiies = Skiing::Ski.areas
  end 
   def menu 
     input = nil 
     while input != "exit"
     puts "Welcome to skiing , if you want to see the list print list "
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