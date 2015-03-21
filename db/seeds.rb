hc = Car.create!(year: 2005, make: "Honda", model: "Civic", mileage: 20_000, cost: 13)
ha = Car.create!(year: 2007, make: "Honda", model: "Accord", mileage: 30_000, cost: 25)
fm =Car.create!(year: 2009, make: "FORD", model: "Mustang", mileage: 40_000, cost: 30)
fe =Car.create!(year: 2012, make: "FORD", model: "Explorer", mileage: 50_000, cost: 35)
cc =Car.create!(year: 2014, make: "CHEVROLET", model: "Cruise", mileage: 60_000, cost: 40)

m = User.create!(name: "Maisam", age: 23, username: "msomji", password: "1234", insurance: true)
p = User.create!(name: "Pablo", age: 27, username: "cartel", password: "1234", insurance: false)

Rental.create!(user: m, car: hc, start_time: "2015-02-23", end_time: DateTime.now, returned: true)
Rental.create!(user: p, car: fe, start_time: "2015-03-15", end_time: DateTime.now, returned: false)
    