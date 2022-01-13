class Vehicle 
    def initialize(model_name, n_wheels, horsepower, tank_type, capacity)
        @model_name = model_name
        @n_wheels = n_wheels
        @horsepower = horsepower
        @tank_type = tank_type
        @capacity = capacity
        puts "\tDetails of: #@model_name"
        puts "\tn_wheels is: #@n_wheels"
        puts "\thorsepower #@horsepower"
        puts "\ttank_type: #@tank_type"
    end

    def driving 
        puts "Vehicle #{@model_name} is driving"
    end 

    def halting
        puts "Vehicle #{@model_name} is halting"
    end

    def speeding
        puts "Vehicle #{@model_name} is speeding!"
    end
end

firstVehicle = Vehicle.new("'86 Cadillac", "4", "210", "98 Octane Gas", 78)
secondVehicle = Vehicle.new("'16 VW", "4", "140", "Diesel", 55)