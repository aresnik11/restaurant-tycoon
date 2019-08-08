
class Location
    attr_reader :address
    attr_accessor :rent, :restaurant
    @@all = []

    def initialize(address, rent, restaurant)
        @address = address
        @rent = rent
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_addresses
        self.all.map { |location| location.address }
    end

    def hire_employee(name, pay)
        Employee.new(name, self, pay)
    end
end
