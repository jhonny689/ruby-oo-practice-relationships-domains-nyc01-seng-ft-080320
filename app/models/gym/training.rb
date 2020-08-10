class Training
    # class attriutes section
    @@all = []

    # attrs section
    attr_accessor :location, :trainer, :client

    # constructor section
    def initialize(location, trainer, client)
        if(trainer == client.trainer)
            self.location = location
            self.trainer = trainer
            self.client = client
            self.class.all << self
        else
            "This client doesn't belong to this trainer he can't "
        end
    end

    # custom getters and setters section


    # instance methods section
   

    # class methods section
    def self.all
        @@all
    end
    
    # private methods section
    
end