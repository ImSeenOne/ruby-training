class Vehicle
    def initialize(id, color, name)
        @veh_id = id
        @veh_color = color
        @veh_name = name

        puts "\tDetails of: #@veh_name"
        puts "ID is: #@veh_id"
        puts "Color is #@veh_color\n\n"
        
    end
end

firstVehicle = Vehicle.new("1", "White", "'86 Cadillac")
secondVehicle = Vehicle.new("2", "Black", "'67 Mustang")