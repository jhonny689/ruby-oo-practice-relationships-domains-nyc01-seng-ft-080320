class CharacterMovieActing
    
    @@all = []
    
    # attrs section
    attr_accessor :character, :movie

    # constructor (initialize) section
    def initialize (character, movie)
        self.character = character
        self.movie = movie
        
        self.class.all << self
    end

    # custom getters / setters section

    # instance methods section
    


    # class methods section
    def self.all
        @@all
    end
    
    # private methods section
end