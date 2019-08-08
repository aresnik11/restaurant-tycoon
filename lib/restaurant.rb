
class Restaurant
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def locations
        Location.all.select do |location|
            location.restaurant == self
        end
    end

    def total_rent
        total = 0
        self.locations.each do |location|
            total += location.rent
        end
        total
    end

    def create_location(location, rent)
        Location.new(location, rent, self)
    end

    def employees
        Employee.all.select do |employee|
            employee.location.restaurant == self
        end
    end

    def total_pay
        employees.reduce(0) do |sum, employee|
            sum + employee.pay
        end
    end

    def total_expenses
        self.total_pay + self.total_rent
    end

end
