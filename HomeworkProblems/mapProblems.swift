//
//  mapProblems.swift
//  HomeworkProblems
//
//  Created by Crystal Jade Allen-Washington on 4/19/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation


// Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that value, and set the key "a" to have the value "". Basically "b" is a bully, taking the value and replacing it with the empty string.

func mapBully(_ input: [String: String]) -> [String: String]{
    if let aValue = input["a"] {
        var back = input
        back["b"] = aValue
        back["a"] = ""
        return back
    } else {
        return input
    }
}




// The type of a dictionary using shorthand syntax
// [«key type»:«value type»]
// setting the value for a key in a dictionary
// «dict»[«key»] = «value»

// Given a map of food keys and topping values, modify and return the map as follows: if the key "ice cream" is present, set its value to "cherry". In all cases, set the key "bread" to have the value "butter".
func topping1(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let _ = back["ice cream"] {
        back["ice cream"] = "cherry"
    }
    
    back["bread"] = "butter"
    
    return back
}




//  Modify and return the given map as follows: if the keys "a" and "b" are both in the map and have equal values, remove them both.
func mapAB2(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"],
        aValue == bValue {
        
        back.removeValue(forKey: "a")
        back["b"] = nil
    }
    
    return back
}



// Modify and return the given map as follows: if the keys "a" and "b" have values that have different lengths, then set "c" to have the longer value. If the values exist and have the same length, change them both to the empty string in the map.
func mapAB4(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"] {
        let aLength = aValue.characters.count
        let bLength = bValue.characters.count
        
        if aLength < bLength {
            back["c"] = bValue
        } else  if aLength > bLength {
            back["c"] = aValue
        } else {
            back["a"] = ""
            back["b"] = ""
        }
    }
    
    return back
}




//Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, and the value is that string's length.

func wordLen(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for string in input {
        back[string] = string.characters.count
    }
    
    return back
}


//Given an array of strings, return a Map<Int, String> containing a key for every different length in the array, and the value is a set of the strings with the associated length

func wordLengthGroup(_ input: [String]) -> [Int: Set<String>] {
    var back: [Int: Set<String>] = [:]
    
    for string in input {
        let length = string.characters.count
        if var set = back[length]  {
            set.insert(string)
            back[length] = set
        } else {
            back[length] = [string]
        }
    }
    
    return back
}

let animalWords: [String] = ["Aerial", "Affect", "Agile", "Agriculture", "Animal", "Attract", "Audubon", "Backyard", "Barrier", "Beak", "Bill", "Birdbath", "Branch", "Breed", "Buzzard", "Cage", "Camouflage", "Capture", "Carrier", "Cheep", "Chick", "Claw", "Collusion", "Color", "Control", "Couple", "Creature", "Cruise", "Danger", "Diet", "Distance", "Domestic", "Drift", "Effect", "Eggs", "Endangered", "Environment", "Estuary", "Expert", "Eyesight", "Feather", "Feed", "Feeder", "Fish", "Fledgling", "Flight", "Float", "Flock", "Flutter", "Fly", "Formation", "Game", "Garden", "Habitat", "Hidden", "Hover", "Hunt", "Identification", "Injured", "Jess", "Keen", "Land", "Lay", "Limb", "Maintain", "Marsh", "Mate", "Migration", "Movement", "Names", "Nature", "Nest", "Notice", "Nuisance", "Observation", "Order", "Ornithology", "Peck", "Perch", "Pet", "Photograph", "Population", "Predator", "Professional", "Quantity", "Quest", "Quick", "Quiet", "Range", "Raptor", "Rodent", "Roost", "Seasonal", "Seeds", "Sentinel", "Shoot", "Shorebird", "Shorebird", "Sight", "Size", "Soar", "Song", "Songbird", "Speed", "Squirrel", "Streak", "Survive", "Tally", "Talon", "Tame", "Temperature", "Thermals", "Track", "Tree", "Types", "Universal", "Vegetables", "Vocal", "Vulture", "Wade", "Watch", "Water", "Waterfowl", "Weather", "Wetlands", "Wild", "Wildlife", "Wildlife", "Window", "Wing", "Wound", "Yonder", "Young", "Zone", "Zoo"]
let output = wordLengthGroup(animalWords)


// Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that same value. In all cases, remove the key "c", leaving the rest of the map unchanged.


func mapShare(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"] {
        back["b"] = aValue
        
        let cValue = back["c"]
        back.removeValue(forKey: "c")
        
    }
    
    return back
    
}

// Given a map of food keys and their topping valus, modify and return the map as follows: if the key "ice cream" has a value, set that as the value for the key "yogurt" also. If the key "spinach" has a value, change that value to nuts".

func toppingTwo(_ input: [String : String]) -> [String : String] {
    
    if let iceCreamValue: String = input["ice cream"] {
        var back = input
    
        let spinachValue = back["spinach"]
        
        back["yogurt"] = iceCreamValue
        back["nuts"] = spinachValue
        return back
    } else {
        return input
    }
}


// Given a map of food keys and topping values, modify and return the map as follows: if the key "potato" has a value, set that as the value for the key "fries." If the key "salad" has a value, set that as the value for the key "spinach."

func toppingThree(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let potatoValue: String = input["potato"],
        let saladValue: String = input["salad"],
        let friesValue: String = input["fries"],
        let spinachValue: String = input["spinach"] {
        
        back["fries"] = potatoValue
        back["spinach"] = saladValue
        
        return back
    
    } else {
        return input
    }
}


// Modify and return the given map as follows: if exactly one of the keys "a" or "b" has a value in the map (but not both), set the other to have that same value in the map. 

func mapAB3(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"] {
        let aValue = back["b"]
        return back
        
    } else if let bValue = back["b"] {
        let bValue = back["a"]
        return back
    }
    
    return back
}



// Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, always with the value 0. For example, the string "hello" makes the pair "hello":0. 

func word0(_ input: [String]) -> [String: Int] {
    var back = input
    var myDictionary = [String: Int]()
    
    for i in input {
        myDictionary.updateValue(0, forKey: i)
    }
    
    return myDictionary
}

// Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, and the value is that string's length.

func wordLen1(_ input: [String]) -> [String: Int] {
    
    var myDictionary = [String: Int]()
    
    
    for i in input {
        myDictionary.updateValue(i.characters.count, forKey: i)
    }
    
    return myDictionary
}

// Given an array of non-empty strings, create and return a Map<String, String> as follows: for each string add its first character as a key with its last character as the value. 

//func pairs(_ input: [String]) -> [String: String] {
//    
//    var myDictionary = [String: String]()
//    
//    for i in input {
//        let startIndex = i.startIndex
//        let endIndex = i.endIndex
//        myDictionary.updateValue(i[endIndex], forKey: i)
//    }
//    
//    return myDictionary
//}


// The classic word-count algorithm: given an array of strings, return a Map<String, Integer> with a key for each different string, with the value the number of times that string appears in the array. 

func wordCount(_ input: [String]) -> [String: Int] {
    
    var myDictionary = [String: Int]()
    
    for i in input {
        let wordFrequency = input.filter { $0 == i }.count
        myDictionary.updateValue(wordFrequency, forKey: i)
    }
    
    return myDictionary
}


// Given an array of non-empty strings, return a Map<String, String> with a key for every different first character seen, with the value of all the strings starting with that character appended together in the order they appear in the array. 

func firstChar(_ input: [String]) -> [String: String] {
    
    var myDictionary = [String: String]()
    
    for i in input {
        let startIndex = i.characters.startIndex
        let firstCharacter = input.filter { $0 == i }.description
        
        }
    
    return myDictionary
    
    }


// Loop over the given array of strings to build a result string like this: when a string appears the 2nd, 4th, 6th, etc. times in the array, append the string to the result. Return the empty string if no string appears a second time.

func wordAppend(_ input: [String]) -> String {
    
    var countWords = 0
    var newString = String()
    
    for string in input {
        if countWords % 2 == 0 {
            newString.append(string)
        }
    }
    
    return newString
}


// Given an array of strings, return a Map<String, Bool> where each different string is a key and its value is true if that string appears 2 or more times in the array. 


func wordMultiple(_ input: [String]) -> [String: Bool] {
    
    var myDictionary = [String: Bool]()
    
    for i in input {
        let wordFrequency = input.filter { $0 == i }.count
        
        if wordFrequency >= 2 {
            myDictionary.updateValue(true, forKey: i)
        } else {
            myDictionary.updateValue(false, forKey: i)
        }
    }
    
    return myDictionary
}





















 





























