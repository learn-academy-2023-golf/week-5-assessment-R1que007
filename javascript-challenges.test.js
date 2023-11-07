// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("convertMessage", () => {

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"  

  it("takes in a string and returns a string with a coded message", () => {
    expect(convertMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
    expect(convertMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
    expect(convertMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
  })
})

// -------> convertMessage is not defined

// b) Create the function that makes the test pass.

// Pseudo code:
//Create a function convertMessage
//input: string
//const codedMessage variable to store converted message
//use .replace() to replace letters for numbers
  // /a/ regular expression pattern that matches the charecter 'a'. 'g' modefier "global" that tells JavaScript to find and replace all occurrences of the pattern in the string. Without it it would only replace the first occurance.
//output string with converted message

const convertMessage = (string_input) => {
  const codedMessage = string_input
    .replace(/a/g, '4') 
    .replace(/e/g, '3')
    .replace(/i/g, '1')
    .replace(/o/g, '0')
    .replace(/A/g, '4')
    .replace(/E/g, '3')
    .replace(/I/g, '1')
    .replace(/O/g, '0')
  return codedMessage
}

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("isFullHouse", () => {  
  
  it("takes in a string and returns a string with a coded message", () => {
    const hand1 = [5, 5, 5, 3, 3]
    // Expected output: true
    const hand2 = [5, 5, 3, 3, 4]
    // Expected output: false
    const hand3 = [5, 5, 5, 5, 4]
    // Expected output: false
    const hand4 = [7, 2, 7, 2, 7]
    // Expected output: true  
    expect(isFullHouse(hand1)).toEqual(true)
    expect(isFullHouse(hand2)).toEqual(false)
    expect(isFullHouse(hand3)).toEqual(false)
    expect(isFullHouse(hand4)).toEqual(true)
  })
})

//---------> isFullHouse is not defined

// b) Create the function that makes the test pass.

// Pseudo code:
//create a function isFullHouse
//create object to count the occurrences of each number in array
//iterate through array and update count of number 
//check for pair and three of a kind
//if both conditions met return true, else false

const isFullHouse = (handArray) => {
// const empty object to count occurences
  const cardCounts = {}
//for ... of loop in JS used for iterating over elements in an object
  for (const card of handArray) {
//sets card count to zero and increases by one if already set to a value
    cardCounts[card] = (cardCounts[card] || 0) + 1
  }
//initialize pairCount to 0
  let pairCount = 0
//initialize tripsCount to 0
  let tripsCount = 0
//constructs an object with {card: count of cards}
//Object.value method accesses the value of count
  for (const count of Object.values(cardCounts)){
    if (count === 2) {
      pairCount++
    } else if (count === 3){
      tripsCount++
    }
  }
//If pair and trips return true else false
  return pairCount ===1 && tripsCount ===1
}
