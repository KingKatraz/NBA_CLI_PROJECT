class NBACLIPROJECT::CLI

    def call
        system 'clear'
        puts "------------------------"
        puts "| WELCOME TO THE ARENA! |"
        puts "------------------------"
        puts ""
        sleep(1)
        puts "Enter 'teams' for a list of  NBA teams"
        puts""
        puts "Enter 'exit' to exit the arena"
        API.get_data
        menu 
    end

    
    def menu 

        input = gets.strip.downcase

        if input == "teams" 
            teams_list
            #menu
        elsif input == "exit"
            exit_msg
        else
            puts "invalid entry, try again!"
            menu
        end
    end 

    def exit_msg

        puts "SPLASH!!!"

    end 


    def teams_list 

            Teams.all.each.with_index(1) do |team, index| 
            puts "#{index} #{team.full_name}"

            
            end 
            
            
            puts "------------------------------------------------------"
            puts "| which team would you like to see? Enter full name!  |"
            puts "------------------------------------------------------"
            puts " "
            puts " "
        

           typo_msg
            

    end 

    def typo_msg

        input = gets.strip.downcase
        
        #binding.pry
        
        # if input != "#{team.full_name}"
        #     puts "invalid entry, try again!"
        # else
        #     team_selection(input)
        # end

        team_selection(input) 



    end



    def team_selection(team)
        
        tea = Teams.find_by_name(team)
        tea.each do |t|
           puts "city -> #{tea[0].city}" 
           puts "conference -> #{tea[0].conference}" 
           puts "division -> #{tea[0].division}" 
           puts "full_name -> #{tea[0].full_name}" 
        end

        puts ""
        puts "-------------------------"
        puts "Go back to teams or exit?"
        puts""
        puts "Enter 'teams' or 'exit'"
        puts "-------------------------"
        
         #input = gets.strip.downcase
        
        menu
        
         #teams_list
        
        #menu
        
    end 

 

end 
