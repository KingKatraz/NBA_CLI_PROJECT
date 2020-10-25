class Teams

    @@all = []

    attr_accessor :city, :conference, :division, :full_name 

    # def initialize(city, conference, division, full_name)

    #     @city = city
    #     @conference = conference
    #     @division = division
    #     @full_name = full_name 
    #     save
    # end 

    def initialize(hash)
        hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end 

    def save
        @@all << self 
    end 

    def self.all
        @@all
    end

    def self.find_by_name(name)

        # self.all.select do |team| 
        #     Teams.name.downcase == name 
        # end 

    end

end 