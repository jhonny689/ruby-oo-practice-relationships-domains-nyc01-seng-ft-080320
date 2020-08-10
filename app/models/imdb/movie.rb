class Movie
    # class attributes section
    @@all = []
    
    # attrs section for instance attributes 
    attr_accessor :title, :year

    # constructor section
    def initialize(title, year="unknown")
        self.title = title
        self.year = year
        self.class.all << self
    end

    # custom getters and setters section


    # instance methods section
    
    def characters
        CharacterMovieActing.all.filter do |cma|
            cma.movie == self
        end.map do |cm|
            cm.character
        end
    end

    def actors
        self.characters.map do |character|
            character.actor
        end
    end

    def actors_count
        self.actors.count
    end

    # class methods section
    def self.all
        @@all
    end

    def self.most_actors
        self.all.inject do |a, b| 
            a.actors_count > b.actors_count ? a : b
        end
    end
end