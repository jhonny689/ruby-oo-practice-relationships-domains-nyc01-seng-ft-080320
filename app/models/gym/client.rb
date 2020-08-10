class Client
    # class attriutes section
    @@all = []

    # attrs section
    attr_accessor :name
    attr_reader :trainer

    # constructor section
    def initialize(name, trainer=nil)
        self.name = name
        self.assign_trainer(trainer)
        self.class.all << self
    end

    # custom getters and setters section
    def assign_trainer(trainer)
        self.trainer = trainer
    end

    def train(location)
        Training.new(location, self.trainer, self)
    end

    def past_locations
        Training.all.filter do |training|
            training.client == self
        end.map do |train|
            train.location
        end.uniq
    end

    def available_locations
        self.trainer.locations
    end
    # instance methods section
    
    # class methods section
    def self.all
        @@all
    end

    
    # private methods section
    private

    def trainer= (trainer)
        @trainer = trainer
    end
    
end