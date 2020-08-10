class Location
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
    def clients
        Training.all.filter do |training|
            training.location == self
        end.map do |train|
            train.client
        end
    end

    def clients_count
        self.clients.count
    end

    def trainers
        Training.all.filter do |training|
            training.location == self
        end.map do |train|
            train.trainer
        end.uniq
    end

    def trainers_count
        self.trainers.count
    end

    # class methods section
    def self.all
        @@all
    end

    def self.least_clients
        self.all.inject do |a, b|
            a.clients_count < b.clients_count ? a : b
        end
    end
    
    # private methods section
    
end