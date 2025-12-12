//  🏔️ MTECH Code Challenge ND18: "Area Perimter"
//  Concept: Practice a simple math warmup

//  Instructions:
    //  You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
    //  If it is a square, return its area. If it is a rectangle, return its perimeter.

//  Examples:
    //  Input: 5, 5
    //  Logic: Square, area is length * width, so 5 * 5
    //  Output: 25

    //  Input: 10, 5
    //  Logic: Rectangle, perimeter is 2(length) + 2(width)
    //  Output: 30

//  ⌺ Black Diamond Challenge:
    //  Create a new function that takes three lengths for the three sides of a triangle. Calculate and return its perimeter and its area.

import Foundation




func areaPerimeter(length: Int, width: Int) -> Int {
    length == width ? length * width : (2 * length) + (2 * width)
}


print(areaPerimeter(length: 10, width: 10))
print(areaPerimeter(length: 5, width: 2))
print("\n")



// BLACK DIAMOND
func triangleAreaPerimeter(side1: Int, side2: Int, side3: Int) -> (Int, Double) {
    var perimeter = side1 + side2 + side3
    let semiPerimeter = perimeter / 2
    print("Semi Permiter: \(semiPerimeter)")
    
    let area = sqrt(Double(semiPerimeter * (semiPerimeter - side1) * (semiPerimeter - side2) * (semiPerimeter - side3)))
    print("Area: \(area)")
    if area == 0 {
        print("Invalid Triangle")
    }
    
    return (perimeter, area)
}


print(triangleAreaPerimeter(side1: 7, side2: 7, side3: 7))
