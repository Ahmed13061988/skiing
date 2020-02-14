
class Skiing::CLI 
  
   def greeting 
      puts "Please type your name :)"
      name = gets.strip.capitalize
      puts "Hello #{name}, and welcome to skiing areas info.\nIf you want to see the list print list or type exit to exit the program !!"
      menu
    end 
 
    def menu 
       Ski.scrape_data
       input = gets.strip.downcase 
       if input == "list"
        list_ski

       elsif input == "exit"
        farewell
      
      else 
        puts "That's invalid input! please type list for list or exit to exit!"
        input = gets.strip.downcase
        if input == "list"
          list_ski
        elsif input == "exit"
          farewell
        else 
          menu
      end 
   end 
  end 
    
    def list_ski
        Ski.all.each.with_index(1) do |ski, index|
          puts "#{index}. #{ski.name}"
        end 
       puts "\n Please enter the number of the ski area you want to get more info about:\n\n"
       list_info
    end 
    
    def list_info 
      input = gets.to_i-1 
      if input.between?(0,Ski.all.length)
        info = Ski.find_area(input)
          puts  "The area you choose is ---->
          ( #{info.name} )\n#{info.stats}"
      else 
         puts "That's not a valid selection!Pleaase try again :)"
        list_info
      end 
        puts "\nDo you want to see another ski area ?\nType 'y' if yes or 'n' to exit ;)"
        input = nil 
        input = gets.strip.downcase
          if input == "y"
            puts list_ski
          elsif input == "n"
            farewell
            exit 
          else 
            puts "I'm not sure what you asking! Type exit to exit or again to show list"
            input = gets.strip.downcase
            if input == "exit"
              farewell
              exit
              else input == "again"
              list_ski
          end 
        end 
    end 
        
    def farewell 
     puts "I hope you liked my CLI application \nHave a great time in Colorado !!"
    end 
      
    
end 