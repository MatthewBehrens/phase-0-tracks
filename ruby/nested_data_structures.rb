highway = 
{
    right_lane: 
    {
        name: 'Right Lane',
        traffic_info: 
        {
            total_cars: 5,
            traffic_condition: "Backed up"
        },
        car_colors: ["blue", "green", "red", "grey", "white"]
    },
    left_lane: 
    {
        name: 'Left Lane',
        traffic_info: 
        {
            total_cars: 4,
            traffic_condition: "Clear"
        },
        car_colors: ["blue", "yellow", "black", "orange"]
    },
    middle_lane: 
    {
        name: 'Middle Lane',
        traffic_info: 
        {
            total_cars: 0,
            traffic_condition: "clear"
        },
        car_colors: []
    }
}

print "total cars in left lane: " 
p highway[:left_lane][:traffic_info][:total_cars]
print "colors of cars in right lane: "
p highway[:right_lane][:car_colors]
print "traffic info of the middle lane: "
p highway[:middle_lane][:traffic_info]
print "change middle lane's traffic condition to under construction: "
highway[:middle_lane][:traffic_condition] = "under construction"
p highway[:middle_lane][:traffic_condition]

