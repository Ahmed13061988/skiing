
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
    def choosing 
      the_ski = @skiies[input.to_i-1]
         puts "#{index} #{ski}-#{ski.url}"
    end 
    def farewell 
     puts "Have a great time in Colorado !!"
    end 
      
      
    def menu 
      puts "Welcome to skiing areas info,if you want to see the list print list or type exit to exit the program"
      input = nil 
      while input != "exit"
        
       input = gets.strip.downcase 
       if input == "list"
        puts "\n Please choose the ski area you want to get more info about:\n\n"
        list_ski
       elsif input == "exit"
        farewell
       elsif input.to_i > 0 && input.to_i < Ski.areas.length 
         puts Ski.areas[input.to_i].name + Ski.areas[input.to_i].url
      else 
        puts "please choose from 1 to 7 to see the ski areas"
      end 
    end 
  end 
    
end 