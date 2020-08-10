class Guest
    
    @@all = []
    
    # attrs section
    attr_accessor :name

    # constructor (initialize) section
    def initialize (name)
        self.name = name
        
        self.class.all << self
    end

    # custom getters / setters section

    # attribute methods section
    def trips
        Trip.all.filter do |trip|
            trip.guest == self
        end
    end

    def trips_count
        self.trips.count
    end
    
    def listings
        self.trips.map do |trip|
            trip.listing
        end.uniq
    end

    # class methods section
    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.filter do |traveller|
            traveller.trips_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.filter do |guest|
            guest.name == name
        end
    end

    # private methods section
end