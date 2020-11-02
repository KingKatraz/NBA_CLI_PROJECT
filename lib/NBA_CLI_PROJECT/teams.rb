class Teams

    @@all = []

    attr_accessor :city, :conference, :division, :full_name 


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

        self.all.select do |team| 
            team.full_name.downcase == name 

        end 

    end

end 