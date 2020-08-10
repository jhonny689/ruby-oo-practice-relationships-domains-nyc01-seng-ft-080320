class Character
    
    @@all = []
    
    # attrs section
    attr_accessor :name, :actor, :movie_acting, :episode_acting

    # constructor (initialize) section
    def initialize (name, actor, movie = nil, episode = nil)
        self.name = name
        self.actor = actor
        
        self.movie_acting = movie ? create_movie_acting(movie) : nil
        self.episode_acting = episode ? create_episode_acting(episode) : nil
        
        self.class.all << self
    end

    # custom getters / setters section

    # instance methods section
    def movies
        CharacterMovieActing.all.filter do |cma|
            cma.character == self
        end.map do |cm|
            cm.movie
        end
    end
    
    def movies_count
        self.movies ? self.movies.count : 0
    end
    
    def episodes
        CharacterEpisodeActing.all.filter do |cma|
            cma.character == self
        end.map do |cm|
            cm.episode
        end
    end

    def episodes_count
        self.episodes.count
    end

    def shows
        
        self.episodes.map do |episode|
            binding.pry
            episode.show
        end.uniq
    end
    
    def shows_count
        self.shows ? self.shows.count : 0
    end

    # class methods section
    def self.all
        @@all
    end

    def self.most_appearances
        all.inject do |a, b|
            a.movies_count > b.movies_count || a.shows_count > b.shows_count ? a : b
        end
    end
    
    # private methods section
    private
    def create_movie_acting(movie)
        CharacterMovieActing.new(self, movie)
    end

    def create_episode_acting(episode)
        CharacterEpisodeActing.new(self, episode)
    end
end