import UIKit

var greeting = "Hello, playground"

print(greeting)

//let name = "Jason"
var name = "Jason"

name = "Amy"

var weight = 100
var additionalWeight = 50

//weight = weight + additionalWeight
weight += additionalWeight
weight -= additionalWeight
weight /= additionalWeight
weight *= additionalWeight
weight %= additionalWeight

var lastName: String = "Smith"
//lastName = 10 // ERROR

var age: Int = 10
//age = 5.3 // ERROR
age = Int(5.4) // ERROR

//---------//
// Strings //
//---------//

// multiline string
print("Multi line string")
var address = """
123 Main St
Apt. 483
Mainville, CA
"""
print(address)
print("-------------")

print("Unicode based characters")
/// special character string
let specialChars = "\u{29}\u{2680}"
print(specialChars)
print("-------------")

print("Multi line vs extended delimiters")
/// multie line vs extended delimiters
address = "124 Oak St.\nOakville, CA"
print(address)
address = #"124 Oak St.\nOakville, CA"#
print(address)
print("-------------")

/// Empty checks
let emptyName = String()
if emptyName.isEmpty {
  print("emptyName is empty")
}
print("-------------")

print("String concatenation")

/// String concatenation
var sentence = "We are learning "
sentence += "Swift programming language"
print(sentence)
print("-------------")

/// Iteration over characters in a string
print("iterate over sentence using for in loop")
for char in sentence {
  print(char)
}
print("-------------")

/// Single character
let singleCharacter: Character = "A"

/// Collection / array of characters
let arrayOfCharacters: [Character] = ["A", "n", "i", "m", "a", "l"]
var charactersStr = String(arrayOfCharacters)

/// Concatenate character to a string
let questionMark: Character = "?"
charactersStr.append(questionMark)

print("charactersStr = \(charactersStr)")

/// Interpolation of string
let animalCount = "no"
print("There are \(animalCount) animals in the park")
print("-------------")

/// Swift String & Characters are fully Unicode compliant
/// Extended grapheme cluster is a sequence of one or more Unicode scalars, e.g. \u{E9}
/// Character: a single extended grapheme cluster
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ

/// String Indices
var continent = "North America"
let startIndex = continent.startIndex

print("start index = \(startIndex)")
print(continent[startIndex])
print("-------------")

let endIndex = continent.endIndex
print("end index = \(endIndex)")
print("-------------")

// Runtime error
//print(continent[endIndex])

let beforeIndex = continent.index(before: endIndex)
print("beforeIndex = \(beforeIndex)")
print(continent[beforeIndex])
print("-------------")

let afterIndex = continent.index(after: startIndex)
print("afterIndex = \(afterIndex)")
print(continent[afterIndex])
print("-------------")

let offsetIndex = continent.index(startIndex,
                                offsetBy: 3)
print("offsetIndex = \(offsetIndex)")
print(continent[offsetIndex])
print("-------------")

// Run-time error
// print(continent[endIndex])

print("iterate over continent using indices")
for index in continent.indices {
  print("\(continent[index])")
}
print("-------------")

print("insert character at the end of continent string")
continent.insert(":",
               at: continent.endIndex)
print("\(continent)")
print("-------------")

print("remove character at the end of continent string")
continent.remove(at: continent.index(before: continent.endIndex))
print("\(continent)")
print("-------------")

print("string ranges")
let range = continent.index(continent.endIndex,
                          offsetBy: -4)..<continent.endIndex
continent.removeSubrange(range)
print("\(continent)")
print("-------------")

