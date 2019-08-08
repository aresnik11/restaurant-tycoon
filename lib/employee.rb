class Employee
    attr_reader :name
    attr_accessor :location, :pay
    @@all = []

    def initialize(name, location, pay)
        @name = name
        @location = location
        @pay = pay
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_pay
        total_pay = self.all.reduce(0) do |sum, employee|
            sum + employee.pay
        end
        total_pay / self.all.count
    end
end