import Foundation

/*
    • A typical car can hold 5 passengers.
    • Return how many cars are needed to seat
      N number of people confortably.
*/

func carsNeeded(passengers: Int) -> Int {
    let carSeats = 5
    let carQuantity = passengers / carSeats

    return passengers % carSeats == 0 ? carQuantity : (carQuantity + 1)
}

print(carsNeeded(passengers: 11))
print(carsNeeded(passengers: 23))
print(carsNeeded(passengers: 64))
