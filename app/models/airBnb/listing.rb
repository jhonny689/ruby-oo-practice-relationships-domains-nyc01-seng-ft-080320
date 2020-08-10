class Listing
    
    @@all = []
    
    # attrs section
    attr_accessor :city_name

    # constructor (initialize) section
    def initialize (city_name)
        self.city_name = city_name
        
        self.class.all << self
    end

    # custom getters / setters section

    # attribute methods section
    def trips
        Trip.all.filter do |trip|
            trip.listing == self
        end
    end

    def trip_count
        trips.count
    end
    
    
    def guests
        trips.map do |trip|
            trip.guest
        end.uniq
    end

    # class methods section
    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.filter do |listing|
            listing.city_name == city
        end
    end

    def self.most_popular
        # Trip.all.uniq.map do |x|
        #     binding.pry
        #     [x.listing, Trip.all.count(x)]}.to_h    
        # end
        self.all.inject do |a, b| 
            a.trip_count > b.trip_count ? a : b
        end
    end

    # private methods section
end