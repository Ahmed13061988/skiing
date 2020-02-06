
class Skiing::CLI 
    
    def call
      menu 
    end
    
    def list_ski
        @skiies = Skiing::Ski.areas
    end 
      
    def menu 
     input = nil 
     while input != "exit"
     puts "Welcome to skiing areas info,if you want to see the list print list or type exit to exit the program"
     input = gets.strip.downcase 
     case input 
     when"1"
     puts "more info about ..."
     when "2"
     puts "more info about ..."
     when "list"
      list_ski 
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