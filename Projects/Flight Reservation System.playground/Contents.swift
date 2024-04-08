import UIKit

var greeting = "Hello, playground"

struct Flight{
    var flightNumber:Int
    var departureLocation:String
    var destination:String
}

struct FlightReservationSystem{
    var flights:[Flight]=[]
    
    mutating func addFlight(flightNumber:Int,departureLocation:String,destination:String){
        let flight=Flight(flightNumber: flightNumber, departureLocation: departureLocation, destination: destination)
        flights.append(flight)
    }
    
    mutating func updateDeparture(flightNumber:Int,newDepartureLocation:String,newDestination:String){
        for i in 0..<flights.count{
            if flights[i].flightNumber == flightNumber{
                flights[i].departureLocation = newDepartureLocation
                flights[i].destination = newDestination
            }
        }
    }
    
    func retreiveDetails(){
        for i in 0..<flights.count{
            print("Details of Flight Number \(i+1): \(flights[i].flightNumber),\(flights[i].departureLocation) and \(flights[i].destination).")
            
        }
    }
    
    func retreiveParticularDetail(flightNumber:Int){
        for i in 0..<flights.count{
            if(flights[i].flightNumber==flightNumber){
                print("Your flight Number is \(flights[i].flightNumber) which is departing from \(flights[i].departureLocation) and will reach at \(flights[i].destination).")
            }
        }
    }
}

var MyFlight = FlightReservationSystem()
MyFlight.addFlight(flightNumber: 1, departureLocation: "Faridkot", destination: "Rajpura")
MyFlight.retreiveDetails()
MyFlight.updateDeparture(flightNumber: 1, newDepartureLocation: "Fdk", newDestination: "Rjp")
MyFlight.retreiveDetails()
MyFlight.addFlight(flightNumber: 2, departureLocation: "Chandigarh", destination: "Delhi")
MyFlight.addFlight(flightNumber: 5, departureLocation: "Bengalore", destination: "Rajpura")
MyFlight.retreiveDetails()
MyFlight.retreiveParticularDetail(flightNumber: 5)
