class Episode
    
    @@all = []
    
    # attrs section
    attr_accessor :episode_title, :episode_number, :show

    # constructor (initialize) section
    def initialize (episode_name, episode_number, show)
        self.episode_title = episode_name
        self.episode_number = episode_number
        self.show = show
        
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