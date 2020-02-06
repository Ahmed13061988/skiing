
class Skiing::CLI 
    
    def call
      menu 
    end
    
    def list_ski
        @skiies = Ski.areas
    end 
      
    def menu 
      puts "Welcome to skiing areas info,if you want to see the list print list or type exit to exit the program"
     input = nil 
     while input != "exit" 
     input = gets.strip.downcase 
     puts "Please choose the ski area you want to get more info about!"
     case input 
     when"1"
     puts "more info about ..."
     when "2"
     puts "more info about ..."
     when "list"
      list_ski 
      
      
      puts "\n Please choose the ski area you want to get more info about:\n\n"
      
     when "exit"
         farewell
     else
       puts "Invalid input !"
     end 
    end
   end 
    def farewell 
     puts "Have a great time in Colorado !!"
    end 
end 