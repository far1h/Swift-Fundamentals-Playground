class Exercise {
    //1. Implement a function that takes in array containing integer numbers and finds the sum of all elements in the array.
    static func findSum(from array: [Int]) -> Int {
        var sum = 0
        for num in array {
            sum += num
        }
        return sum
    }
    
    //2. Implement a function that takes in array containing strings and returns the sorted array.
    static func sort(array: [String]) -> [String] {
        var input = array
        let uptoEndIndex = input.count - 1

        for rearIndex in 0...uptoEndIndex {
            var isAllSorted = true
            for frontIndex in 0..<uptoEndIndex - rearIndex {
                let currentRunning = frontIndex
                let currentRunningAheadByOne = currentRunning + 1
                if input[currentRunning] > input[currentRunningAheadByOne] {
                    input.swapAt(currentRunning, currentRunningAheadByOne)
                    isAllSorted = false
                }
            }
    
            if isAllSorted {
                break
            }
        }
        return input

    }
}

Exercise.sort(array: ["Hello","Drake"])
