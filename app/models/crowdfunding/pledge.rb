class Pledge
    # class variables section
    @@all = []

    # attrs definition section
    attr_accessor :project, :pledger, :amount

    # constructor method section
    def initialize (project, user, amount)
        self.project = project
        self.pledger = user
        self.amount = amount
        self.class.all << self
    end

    # cutom getters / setters section

    # instance methods section
    

    #class methods section
    def self.all
        @@all
    end

    def self.highest_pledge
        self.all.inject do |a,b|
            a.amount > b.amount ? a : b
        end
    end

end