class API

    def self.get_data
        response = HTTParty.get("https://www.balldontlie.io/api/v1/teams")
        list_teams = JSON.parse(response.body)["data"]
        list_teams.each do |team|
            Teams.new(team)
        end
    end 


    
end 