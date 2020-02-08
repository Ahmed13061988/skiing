
class Skiing::CLI 
    
    def call
      menu 
    end
    
    def list_ski
        @skiies = Ski.areas
        @skiies.each.with_index(1) do |ski, index|
          puts "#{index}. #{ski.name}-#{ski.url}"
        end 
    end 

    def farewell 
     puts "I hope you liked my CLI application \nHave a great time in Colorado !!"
    end 
      
      
    def menu 
      puts "Welcome to skiing areas info,if you want to see the list print list or type exit to exit the program !!"
      input = nil 
      while input != "exit"
        
       input = gets.strip.downcase 
       if input == "list"
        puts "\n Please choose the ski area you want to get more info about:\n\n"
        list_ski
       elsif input == "exit"
        farewell
       elsif input.to_i > 0 && input.to_i < Ski.areas.length+1
           puts Ski.areas[input.to_i-1].name + Ski.areas[input.to_i-1].url
        
      else 
        puts "That's invalid input! please choose from 1 to 7 to see the ski areas"
      end 
    end 
  end 
    
end 