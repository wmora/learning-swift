// “Tradition suggests that the first program in a new language should print the words “Hello, world” on the screen.”

print("Hello world")

/******************
    SIMPLE VALUES
*******************/

// Use let to make a constant and var to make a variable

var myVariable = 24
myVariable = 42

let myConstant = "You shall not change me"

// If the initial value doesn't provide enough infomration, specify the type by writing it after the variable
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// EXPERIMENT: Create a constant with a epxlicit type of Float and a value of 4
let explicitConstant: Float = 4

// Values are never implicitly converted to another type. If you need to
// convert a value to a different type, explicitly
// make an instance of the desired type

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// EXPERIMENT: Try removing the conversion to String from the last line. What error do you get?
// Answer: Could not find an overload for '+' that accepts the supplied arguments

// There's an even simpler way to include values in strings: 
// Write a value in parentheses with a backlash before them
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// EXPERIMENT: Use \() to include a floating-point calculation in a string and to include someone's name in a greeting
let tableTopWidth: Float = 24
let tableTopHeight: Float = 30
"The table area is \(tableTopWidth + tableTopHeight) m2"

let myName = "Will"
"My name is \(myName)"

// Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bootle of water"
shoppingList

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"
occupations["Malcolm"]
occupations["Kaylee"]
occupations["Jayne"]

// To create an empty array or dictionary, use the initializer syntax
let emptyarray = String[]()
let emptyDictionary = Dictionary<String, Float>()

// If type information can be inferred, you can write an empty array as [:] - for example, when you set a new value for
// a variable or pass an argument to a function

shoppingList = [] // Went shopping and bought everything


/******************
    CONTROL FLOW
*******************/

// Use if and switch to make conditionals, and use for-in, for, while, and 
// do-while to make loops. Parentheses around the condition or loop
// variable are optional. Braces around the body are required

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    
    // In an if statement, the conditional must be a Boolean expression - 
    // this means that code such as 'if score {...}' is an error, not an
    // implicit comparison to zero.
    
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

// You can use if and let together to work with values that might be 
// missing. These values are represented as optionals. An optional value 
// either contains a value or contains nil to indicate that the value is 
// missing. Write a question mark (?) after the type of a value as optional

var optionalString: String? = "Hello"
optionalString == nil


// EXPERIMENT: Change optionalName to nil. What greeting do you get?
// Add an else clause that sets a different greeting if optionalName is nil

var optionalName: String? = nil//"John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, stranger!"
}

// Switches support



