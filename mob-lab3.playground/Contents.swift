import UIKit


//TODO: You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from colorHex.

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

print("~~~Problem 1~~~\nColor: Hex Value \n")
for (color, hexValue) in colorHex {
    print("\(color): \(hexValue)")
}


//TODO: Given an array of colors. We need to know how many times each color appears in the array.

var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

let sortedColors = colors.sorted()

var blue = 0, green = 0, orange = 0, pink = 0, purple = 0, red = 0

for color in sortedColors{
    if color == "blue"{
        blue += 1
    }
    else if color == "green"{
        green += 1
    }
    else if color == "orange"{
        orange += 1
    }
    else if color == "pink"{
        pink += 1
    }
    else if color == "purple"{
        purple += 1
    }
    else{
        red += 1
    }
}

print("\n~~~Problem 2~~~\nred - \(red)\norange - \(orange)\npurple - \(purple)\npink - \(pink)\nblue - \(blue)\ngreen - \(green)\n")

print("~~~Problem 3~~~")
//TODO: Write a function that returns the first N Fibonacci numbers.

func fibo(n: Int) -> [Int]{
    //Init Array and num
    var fiboArray = [Int]()
    var num = 1
    
    while num <= n {
        if num == 1{
            fiboArray.append(1)
            num += 1
        }
        else if num == 2{
            fiboArray.append(1)
            num += 1
        }
        else{
            var fiboHold = 0
            fiboHold = fiboArray[num-3] + fiboArray[num-2]
            fiboArray.append(fiboHold)
            num += 1
        }
    }
    return fiboArray
}

var fibArray = fibo(n: 7)

print(fibArray)

//TODO: Write a function that prints the powers of 2 that are less than or equal to N.
print("\n~~~Problem 4~~~")
func powerOfTwo(n: Int){
    if n < 2 {
        print("Thats less than 2...")
    }
    else{
        var powerArray = [Int]()
        var num = 2
        var control = true
        while control{
            if num > n{
                control = false
            }
            else{
                powerArray.append(num)
                num *= 2
            }
            
        }
        print(powerArray)
    }
}

powerOfTwo(n: 64)

//TODO: Write a function that prints how many students belong to each track.
print("\n~~~Problem 5~~~")
var coursesAndStudents = ["MOB": 30, "BEW": 40, "FEW": 30, "DS": 40]

func printStudents(studentArray: Dictionary<String, Int>){
    for (key, value) in studentArray {
        print("There are \(value) students in \(key)")
    }
}

printStudents(studentArray: coursesAndStudents)

//TODO: Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
print("\n~~~Problem 6~~~")

func firstEqualLast(array: [Int]) -> Bool {
    if array[0] == array.last{
       return true
    }
    else{
        return false
    }
}

var myArray = [0, 1, 4, 6, 9]
var myArray2 = [0, 1, 4, 6, 0]
print(firstEqualLast(array: myArray))
print(firstEqualLast(array: myArray2))

//TODO: Write a function to compute the sum of all the elements of a given array of integers.
print("\n~~~Problem 7~~~")

func sumArray(numArray: [Int]) -> Int {
    var sum = 0
    for i in numArray{
        sum += i
    }
    
    return sum
}

print(sumArray(numArray: myArray))

//TODO: Write a function to reverse the elements of an array of integers to left direction. [1,2,3] becomes [3,2,1]
print("\n~~~Problem 8~~~")

func reverseArray(numArray: [Int]) -> [Int]{
    var holdArray = [Int]()
    
    for i in numArray{
        holdArray.insert(i, at: 0)
    }
    return holdArray
}

print(reverseArray(numArray: myArray))


//TODO: Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters.
print("\n~~~Problem 9~~~")

func checkDupe(word: String) -> Bool {
    var holderArray = [Character]()
    for char in word{
        if holderArray.contains(char){
            return false
        }
        holderArray.append(char)
    }
    
    return true
}

print(checkDupe(word: "hello"))
print(checkDupe(word: "luna"))


//TODO: Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
print("\n~~~Problem 10~~~")

func returnCharNum(word: String, letter: Character) -> Int {
    var charNum = 0
    for char in word{
        if char == letter{
            charNum += 1
        }
    }
    return charNum
}

print(returnCharNum(word: "hello", letter: "l"))
print(returnCharNum(word: "helllllllllo", letter: "l"))

//TODO: Write a function that adds up the elements in the even rows only
print("\n~~~Problem 11~~~")

func addEvenRows(numRows: Int, numColumns: Int) -> Int {
    var totalSum = 0, i = 0, x = 0
    
    while i < numRows{
        while x < numColumns{
            if x % 2 == 0{
                totalSum += i * (x)
                x += 1
            }
            else{
                x += 1
            }
        }
        i += 1
        x = 0
    }
    return totalSum
}

print(addEvenRows(numRows: 5, numColumns: 5))
