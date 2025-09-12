//  🏔️ MTECH Code Challenge SF23: "Grade Calculator"
//  Concept: Practice using switch statements to process data into a different representation

//  Instructions:
    //  Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

    //  Numerical Score     Letter Grade
    //  90 <= score <= 100      'A'
    //  80 <= score <  90       'B'
    //  70 <= score <  80       'C'
    //  60 <= score <  70       'D'
    //  0  <= score <  60       'F'
    
//  Notes:
    //  Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

//  Examples:
    //  Input: 100, 90, 80
    //  Math: (100 + 90 + 80) / 3 = 90
    //  Output: A

//  ⌺ Black Diamond Challenge:
    //  Add a "+" for scores ending in 7 or higher, and "-" for scores ending in 2 or lower. Do not output an A+, F+, or F-.

import Foundation

func getGrade(_ s1: Double, _ s2: Double, _ s3: Double) -> String {
  
    var gradeAverage: Double = (s1 + s2 + s3) / 3
    print("Grade average is \(gradeAverage)")
    var presiseGrade: String
    
    if Int(gradeAverage) % 10 == 7 || Int(gradeAverage) % 10 == 8 || Int(gradeAverage) % 10 == 9 && gradeAverage < 97  {
        presiseGrade = "+"
    }
    else if Int(gradeAverage) % 10 == 1 || Int(gradeAverage) % 10 == 2 && gradeAverage > 60 {
        presiseGrade = "-"
    }
    else {
        presiseGrade = ""
    }
//    Black diamond not 100% complete
    
    switch gradeAverage {
    case 90...100:
        print("A\(presiseGrade)")
    case 80..<90:
       print("B\(presiseGrade)")
    case 70..<80:
        print("C\(presiseGrade)")
    case 60..<70:
        print("D\(presiseGrade)")
    case 0..<60:
        print("F")
    default:
        return "Naughty naughty"
    }
    return String(gradeAverage)
}

getGrade(100, 95, 100)
