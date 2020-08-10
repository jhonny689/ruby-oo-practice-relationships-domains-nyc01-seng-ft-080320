class CharacterEpisodeActing
    
    @@all = []
    
    # attrs section
    attr_accessor :character, :episode

    # constructor (initialize) section
    def initialize (character, episode)
        self.character = character
        self.episode = episode
        
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