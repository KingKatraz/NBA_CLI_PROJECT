class NBACLIPROJECT::CLI

    def call

        puts "Welcome User!"
        puts "Enter 'teams' to see a list of NBA teams"
        puts "Enter 'exit' to exit the arena"
        API.get_data
        menu 
    end

    
    def menu 

        input = gets.strip.downcase

        if input == "teams" 
            teams_list
            menu
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

            Teams.all.each_with_index do |teams, index| 
            puts "#{index + 1} #{Teams.name}"
            end 
            
            
            puts "------------------------------------"
            puts "| which team would you like to see? |"
            puts "------------------------------------"


            input = gets.strip.downcase

            #team_selection(input)

    end 

    def team_selection(team)
        
        tea = Teams.find_by_name(team)
        tea.each do |t|
           puts ":name #{t.name}" 
           puts ":conference #{t.conference}" 
           puts ":division #{t.division}" 
           puts ":full_name #{t.full_name}" 
        end

    end 

 

end 
