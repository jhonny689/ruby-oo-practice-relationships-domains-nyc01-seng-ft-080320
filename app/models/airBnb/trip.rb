class Trip
    
    @@all = []
    
    # attrs section
    attr_accessor :guest, :listing

    # constructor (initialize) section
    def initialize (guest, listing)
        self.guest = guest
        self.listing = listing
        self.class.all << self
    end

    # custom getters / setters section

    # attribute methods section


    # class methods section
    def self.all
        @@all
    end

    # private methods section
end