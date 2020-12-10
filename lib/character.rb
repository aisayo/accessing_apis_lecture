class Character 

    @@all = []

    attr_accessor :name, :homeworld, :films, :starships 

    def initialize(name, homeworld, films, starships)
        @name = name 
        @homeworld = homeworld 
        @films = films 
        @starships 
        save
    end 

    def save 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end 