class Trainer
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
        Client.all.filter do |client|
            client.trainer == self
        end
    end

    def clients_count
        self.clients.count
    end

    # class methods section
    def self.all
        @@all
    end

    def self.most_clients
        self.all.inject do |a, b|
            a.clients_count > b.clients_count ? a : b
        end
    end
    
    # private methods section
    
end