class Actor
    # class attriutes section
    @@all = []

    # attrs section
    attr_accessor :name

    # constructor section
    def initialize(name)
        self.name = name
        self.class.all << self
    end

    # custom getters and setters section


    # instance methods section
    def characters
        Character.all.filter{|char| char.actor == self}
    end

    def characters_count
        self.characters.count
    end

    # class methods section
    def self.all
        @@all
    end

    def self.most_characters
        self.all.inject do |a, b|
            a.characters_count > b.characters_count ? a : b
        end
    end
    
    # private methods section
    
end