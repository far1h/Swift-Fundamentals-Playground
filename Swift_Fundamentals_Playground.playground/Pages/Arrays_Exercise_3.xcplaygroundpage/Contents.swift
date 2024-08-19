class Exercise {
    //1. Implement a function that takes in array and returns the smallest element in the array.
    static func findMinElement(in array: [Int]) -> Int? {
        var min = 1000        
        for num in array{
            if min > num {
                min = num
            }
        }
        return min
        
    }
    
    //2. Implement a function that finds whether an element exists in the array.
    static func isElement(element: Int, presentIn array: [Int]) -> Bool {
        for num in array {
            if num == element {
                return true
            }
        }
        return false
    }
}
Exercise.findMinElement(in: [3,1,2,9,3])

