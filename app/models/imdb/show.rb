class Show
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
    def episodes
        Episode.all.filter do |episode|
            episode.show == self
        end
    end

    def episodes_count
        self.episodes.count
    end
    
    def characters
        episodes_of_this_show = self.episodes
        CharacterEpisodeActing.all.filter do |cea|
            episodes_of_this_show.include? cea.episode
        end.map do |ce|
            ce.character
        end.uniq
    end

    def characters_count
        self.characters.count
    end
    def actors
        self.characters.map do |character|
            character.actor
        end.uniq
    end

    def actors_count
        self.actors.count
    end

    def on_the_big_screen
        Character.all.filter do |character|
            character.movie.title == self.title
        end.map do |char|
            char.movie
        end
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