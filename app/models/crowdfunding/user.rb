class User
    # class variables section
    @@all = []

    # attrs definition section
    attr_accessor :name

    # constructor method section
    def initialize (name)
        self.name = name
        self.class.all << self
    end

    # cutom getters / setters section

    # instance methods section
    def create_project (project, pledge_goal)
        Project.new(project, self, pledge_goal)
    end

    def pledge_project (project, amount)
        Pledge.new(project, self, amount)
    end

    def pledges
        Pledge.all.filter do |pledge|
            pledge.pledger == self
        end
    end

    def pledges_count
        self.pledges.count
    end

    def pledges_total
        self.pledges.inject do |sum, pledge|
            sum + pledge.amount
        end
    end

    #class methods section
    def self.all
        @@all
    end

    def self.highest_pledge
        self.all.inject do |a,b|
            a.pledges_total > b.pledges_total ? a : b
        end
    end

    def self.project_creator
        Project.all.map do |project|
            project.creator
        end
    end
end