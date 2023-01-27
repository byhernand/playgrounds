import Foundation

/*
    • A typical car can hold 5 passengers.
    • Return how many cars are needed to seat
      N number of people confortably.
*/

func carsNeeded(passengers: Int) -> Int {
    let carSeats = 5
    var carQuantity : Int
    
    if passengers < carSeats {
        carQuantity = passengers < 1 ? 0 : 1
    } else if passengers % carSeats == 0 {
        carQuantity = passengers / carSeats
    } else {
        carQuantity = passengers / carSeats + 1
    }

    return carQuantity
}

let result = carsNeeded(passengers: 11)

print(result)
