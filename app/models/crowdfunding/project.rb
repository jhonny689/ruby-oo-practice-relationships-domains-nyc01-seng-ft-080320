class Project
    # class variables section
    @@all = []

    # attrs definition section
    attr_accessor :name, :creator, :pledge_goal,:description

    # constructor method section
    def initialize (name, creator, pledge_goal, description= "no description")
        self.name = name
        self.creator = creator
        self.pledge_goal = pledge_goal
        self.description = description
        self.class.all << self
    end

    # cutom getters / setters section

    # instance methods section
    def pledges
        Pledge.all.filter do |pledge|
            pledge.project == self
        end
    end

    def pledges_count
        self.pledges.count
    end

    def pledgers
        self.pledges.map do |pledge|
            pledge.pledger
        end.uniq
    end

    def pledgers_count
        self.pledgers.count
    end

    def pledges_total
        self.pledges.inject {|sum, pledge| sum + pledge.amount}
    end

    def amount_to_goal
        self.pledge_goal - self.pledges_total
    end

    #class methods section
    def self.all
        @@all
    end

    def self.highest_pledge
        self.pledges.inject do |a, b|
            a.amount > b.amount ? a : b
        end
    end

    def self.no_pledges
        self.all.filter do |project|
            project.pledges_total == 0
        end
    end

    def self.above_goal
        self.all.filter do |project|
            project.amount_to_goal < 0
        end
    end

    def self.most_backers
        self.all.inject do |a, b|
            a.pledgers_count > b.pledgers_count ? a : b
        end
    end
end