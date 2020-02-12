
class Skiing::CLI 
  attr_accessor :name, :info 
  
  def initialize 
    @name = name 
    @info =info 
  end 

    def call
      menu 
    end
    
    def list_ski
        @skiies = Ski.scrape_resort
        @skiies.each.with_index(1) do |ski, index|
          puts "#{index}. #{ski}"
        end 
    end 
    
    def farewell 
     puts "I hope you liked my CLI application \nHave a great time in Colorado !!"
    end 
      
      
    def menu 
      puts "Welcome to skiing areas info.\nIf you want to see the list print list or type exit to exit the program !!"
      input = nil 
      while input != "exit"
        
       input = gets.strip.downcase 
       if input == "list"
        list_ski
          puts "\n Please choose the ski area you want to get more info about:\n\n"
       elsif input == "exit"
        farewell
       elsif input.to_i > 0 && input.to_i < Ski.scrape_resort.length+1
           puts Ski.scrape_resort[input.to_i-1] 
           
           puts "************"
           
           puts Ski.scrape_details[input.to_i-1]
           
           puts"*************************************"
           
           puts Ski.scrape_info[input.to_i-1]
        
      else 
        puts "That's invalid input! please choose from 1 to 7 to see the ski areas"
      end 
    end 
  end 
    
end 