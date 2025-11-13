//  🏔️ MTECH Code Challenge TP28: "Telephone Pole Calculator"
//  Concept: Practice working with geometry in Swift code

//  Instructions:
//  There are telephone poles along the side of a road. The distance between the poles is the same and the width of the poles is the same. Your function accepts three arguments:
//  Number of poles (> 1);
//  Distance between poles (10 - 30 meters);
//  Diameter of the poles (10 - 50 centimeters)
//  Calculate the distance between the center of the first and the center of the last telephone pole.

//  Notes:
//  For the purpose of this challenge, assume the poles are perfectly round.

//  Examples:
//  Input: (numOfPillars: 5, distance: 25, radius: 10)
//  Output: 10,040

//  ⌺ Black Diamond Challenge:
//  On the opposite side of the street are another set of telephone poles, of the same number, same radius, and same distances. Create a second function that returns the distance between the first pole on one side of the road and the last pole on the other.

import Foundation


enum Errors: Error {
    case tooFewPillars(String)
    case distanceOutOfRange(String)
    case diameterOutOfRange(String)
}


func calculateTelephonePoleDistance(numberOfPillars: Int, distanceBetween: Int, diameter: Int) throws -> Int {
    guard numberOfPillars > 1 else { throw Errors.tooFewPillars("Pillar count must be 2 or more") }
    guard distanceBetween <= 30 && distanceBetween >= 10 else { throw Errors.distanceOutOfRange("Distance must be between 10 - 30") }
    guard diameter <= 50 && distanceBetween >= 10 else { throw Errors.diameterOutOfRange("Diamter must be between 10 - 50") }
    
    print((numberOfPillars - 1) * (distanceBetween * 100 + diameter))
    let results = (numberOfPillars - 1) * (distanceBetween * 100 + diameter)
    return results
}


do {
    try calculateTelephonePoleDistance(numberOfPillars: 10, distanceBetween: 42, diameter: 5)
} catch {
    print(error)
}
do {
    try calculateTelephonePoleDistance(numberOfPillars: 5, distanceBetween: 25, diameter: 10)
} catch {
    print(error)
}
do {
    try calculateTelephonePoleDistance(numberOfPillars: 12, distanceBetween: 22, diameter: 55)
} catch {
    print(error)
}

// BLACK DIAMOND
func calculateDistanceFromBothSides(pillarCount: Int, betweenDistance: Int, pillarDiameter: Int) throws -> Int {
    var firstDistance = try calculateTelephonePoleDistance(numberOfPillars: pillarCount, distanceBetween: betweenDistance, diameter: pillarDiameter)
    
    var newDistance = Double((betweenDistance * betweenDistance) + (firstDistance * firstDistance)).squareRoot()
    let result = Int(newDistance)
    return result
}

print("\n")
do {
    try calculateDistanceFromBothSides(pillarCount: 10, betweenDistance: 13, pillarDiameter: 22)
} catch {
    print(error)
}
do {
    try calculateDistanceFromBothSides(pillarCount: 4, betweenDistance: 15, pillarDiameter: 7)
} catch {
    print(error)
}
do {
    try calculateDistanceFromBothSides(pillarCount: 13, betweenDistance: 19, pillarDiameter: 3)
} catch {
    print(error)
}
