import UIKit

var greeting = "Hello, playground"


struct ExerciseSession{
    var exerciseType:String
    var duration:Int
    var calories:Double
}

struct FitnessTracker{
    var name:String
    var age:Int
    var weight:Double
    var height:Double
    var exerciseSessions:[ExerciseSession]=[]
    
    mutating func addSessions(exercisetype:String,duration:Int,calories:Double){
        let session = ExerciseSession(exerciseType: exercisetype, duration: duration, calories: calories)
        exerciseSessions.append(session)
    }
    
    func totalCaloriesBurned()->Double{
        var result=0.0
        for i in 0..<exerciseSessions.count{
            result+=exerciseSessions[i].calories
        }
        return result
    }
    
    mutating func updateUserInfo(name: String, age: Int, weight: Double, height: Double) {
        self.name = name
        self.age = age
        self.weight = weight
        self.height = height
    }
    
    func displaySummary(){
        print("Fitness Summary for \(name):")
        print("Age: \(age)")
        print("Weight: \(weight) kg")
        print("Height: \(height) meters")
        print("Total Calories Burned: \(totalCaloriesBurned())")
        print("Exercise Sessions:")
        for (index, session) in exerciseSessions.enumerated() {
            print("Session \(index + 1):")
            print("Exercise Type: \(session.exerciseType)")
            print("Duration: \(session.duration) minutes")
            print("Calories Burned: \(session.calories)")
        }
    }
}


var FirstUser=FitnessTracker(name: "Harman", age: 21, weight: 60, height: 140)
FirstUser.addSessions(exercisetype: "Running", duration: 30, calories: 28)
FirstUser.addSessions(exercisetype: "Cycling", duration: 40, calories: 24)
FirstUser.displaySummary()
FirstUser.updateUserInfo(name: "Hamu", age: 21, weight: 60, height: 140)
FirstUser.displaySummary()

