/*:
 ## Exercise: Using Return Values
 
 You’ve learned that functions are the building blocks of programs, but so far you’ve mostly used functions one at a time. In this exercise, you'll use the results of one function to influence the work that's done by another.

 The function `impossibleBeliefsCount` takes several numbers of reported unlikely incidents. It then prints the number of impossible things to be believed:
*/
func impossibleBeliefsCount(pigsFlying: Int, frogsBecomingPrinces: Int, multipleLightningStrikes: Int) -> Int {
    return pigsFlying + frogsBecomingPrinces + multipleLightningStrikes
}
let total = impossibleBeliefsCount(pigsFlying: 4, frogsBecomingPrinces: 3, multipleLightningStrikes: 2)
//: - callout(Exercise):Update the `impossibleBeliefsCount` function so that instead of printing the value, it returns it as an `Int`.
//:
//: `impossibleThingsPhrase` creates a phrase using string interpolation:
func impossibleThingsPhrase(numberOfImpossibleThings: Int, meal: String) -> String {
    return "Why, I've believed as many as \(numberOfImpossibleThings) before \(meal)"
}
impossibleThingsPhrase(numberOfImpossibleThings: 10, meal: "teatime")
//: - callout(Exercise): Update the `impossibleThingsPhrase` function so that, instead of using its two internal constants, it takes two arguments: `numberOfImpossibleThings` as an `Int` and `meal` as a `String`.
//:
//: Now you have two functions that take parameters and return values.
//: - callout(Exercise): Call `impossibleBeliefsCount` and store the result in a constant.\
//:Call `impossibleThingsPhrase`, passing in the result of `impossibleBeliefsCount` as one of the arguments.

let sum = impossibleBeliefsCount(pigsFlying: 3, frogsBecomingPrinces: 2, multipleLightningStrikes: 1)
let phrase = impossibleThingsPhrase(numberOfImpossibleThings: sum, meal: "teatime")


//: [Previous](@previous)  |  page 15 of 17  |  [Next: Exercise: Argument Label](@next)
