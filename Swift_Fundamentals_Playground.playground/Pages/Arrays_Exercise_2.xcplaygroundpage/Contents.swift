class Exercise {
    //1. Implement a function that takes two arrays containing numbers and returns a single array containing content of both arrays.
    static func merge(array1: [Int], array2: [Int]) -> [Int] {
        var newArray = array1
        newArray.append(contentsOf: array2)
        return newArray
    }
    
    //2. Implement a function that takes in array and returns the biggest element in the array.
    static func findMaxElement(in array: [Int]) -> Int? {
        var max = 0
        for num in array {
            if max < num {
                max = num
            }
        }
        return max
    }
}

Exercise.findMaxElement(in: [3,1,2,9,3,])
