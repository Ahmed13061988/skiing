
class Skiing::CLI 
  
   def greeting 
      puts "Please type your name :)"
      name = gets.strip.capitalize
      puts "Hello #{name}, and welcome to skiing areas info.\nIf you want to see the list print list or type exit to exit the program !!"
    end 
 
    def menu 
      greeting
       Ski.scrape_data
       input = gets.strip.downcase 
       if input == "list"
        list_ski

       elsif input == "exit"
        farewell
       elsif input.to_i > 0 && input.to_i < Ski.scrape_data.length+1
           puts Ski.scrape_data[input.to_i-1] 
           
           puts "************"
           
           puts Ski.scrape_details[input.to_i-1]
           
           puts"*************************************"
           
           puts Ski.scrape_info[input.to_i-1]
        
      else 
        puts "That's invalid input! please choose from 1 to 7 to see the ski areas"
      end 
    end 
  end 
    
    def list_ski
        Ski.all.each.with_index(1) do |ski, index|
          puts "#{index}. #{ski.name}"
        end 
       puts "\n Please choose the ski area you want to get more info about:\n\n"
    end 
    
    def farewell 
     puts "I hope you liked my CLI application \nHave a great time in Colorado !!"
    end 
      
    
end 