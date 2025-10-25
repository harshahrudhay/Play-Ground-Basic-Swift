import Foundation

func runAll() {
    step1()
}

func step1() {
    print("\n=== Step 1: Force Unwrap ===")
    let firstNumber: Int? = 10
    let secondNumber = 20
    let Sum = firstNumber! + secondNumber
    print(Sum)
    step2()
}

func step2() {
    print("\n=== Step 2: Nil Coalescing ===")
    let name: String? = "Haan"
    let finalName = name ?? "Guest"
    print("Hello, \(finalName)")                                                    // prints "Hello, Guest"
    step3()
}

func step3() {
    print("\n=== Step 3: Force Unwrap ===")
    let Name: String? = "Alice"
    print(Name!)                                                                    // prints "Alice"
    step4()
}

func step4() {
    print("\n=== Step 4: if let ===")                                               // if let
    let naame: String? = "Alien"
    if let unwrappedName = naame {
        print("Hello, \(unwrappedName)")
    } else {
        print("No name provided")
    }
    step5()
}

func step5() {
    print("\n=== Step 5: guard ===")
    func greet(naaame: String?) {
        guard let unwraappedName = naaame else {
            print("Name is missing.")
            return
        }
        print("Hello, \(unwraappedName)")
    }
    greet(naaame: nil)
    step6()
}

func step6() {
    print("\n=== Step 6: Implicit Optional ===")
    let noame: String?
    noame = "jon"
    if let unwrappedName = noame {
        print("Hello, \(unwrappedName)")
    } else {
        print("No name provided")
    }
    step7()
}

func step7() {
    print("\n=== Step 7: Love Calculator ===")
    func loveCalculator() {
        let loveScore = Int.random(in: 0...100)
        if loveScore >= 80 {
            print("Score is above 80")
        } else if loveScore >= 40 {
            print("score is greater than 20")
        } else {
            print("womp")
        }
    }
    loveCalculator()
    step8()
}

func step8() {
    print("\n=== Step 8: Enums ===")
    enum Colors {
        case blue, red, yellow, blue1, red1, yellow1, blue2, red2, yellow2
    }
    let selectcolor = Colors.yellow2
    switch selectcolor {
    case .yellow2:
        print("yellow2")
    default:
        print("default")
    }
    step9()
}

func step9() {
    print("\n=== Step 9: Another Enum ===")
    enum LaptopsInventory {
        case Lenovo, Asus, Apple, Acer
    }
    let frndsLaptop = LaptopsInventory.Asus

    switch frndsLaptop {
    case .Asus:
        print("Good one")
    default:
        print("Other")
    }
    step10()
}

func step10() {
    
    
    print("\n=== Step 10: More Enums ===")
    enum Pencils {
        case one, two, three, four
    }
    let numberOnePencil = Pencils.one

    switch numberOnePencil {
    case .one:
        print("1st pencil")
    default:
        print("none")
    }
    step11()
    
}

func step11() {
    
    print("\n=== Step 11: Function with Return ===")
    
    func sum(ofNumber firstNumber: Int, plusNumber secondNumber: Int) -> Int? {
        
        if firstNumber < 0 || secondNumber < 0 {
            return nil
        }
        let sumOfNumbers = firstNumber + secondNumber
        return sumOfNumbers
    }

    let resultOfSum = sum(ofNumber: 20, plusNumber: 30)
    
    if let resultOfSums = resultOfSum {
        print(resultOfSums)
    } else {
        print("Invalid Output")
    }

    let resultOfsussyBakas = sum(ofNumber: 1, plusNumber: 1)
    print(resultOfsussyBakas ?? 0)

    step12()
    
}

func step12() {
    
    print("\n=== Step 12: Inout Example ===")
    
    func printSomething(text: String) {
        
        if text == "bad Input" {
            return
        }
        print(text)
    }
    
    printSomething(text: "bad Input")
    
    step13()
    
}

    func step13() {
        
        print("\n=== Step 13: Sorting ===")
        
    
    var numberToChange = 5
    var anotherNumber = 8

    func addOne(to number: inout Int) {
        
        number = number + 3
    }

    addOne(to: &numberToChange)
    addOne(to: &anotherNumber)

    print(numberToChange)
    print(anotherNumber)
    
    
    enum SortOrder {
        case asce, desc
    }

    func sort(numbers: [Int], inOrder order: SortOrder = .desc) {
        
        let sortedNumbers: [Int]
        switch order {
        case .asce:
            sortedNumbers = numbers.sorted()
        case .desc:
            sortedNumbers = numbers.sorted(by: >)
        }
        print("\(sortedNumbers)")
    }

    sort(numbers: [5, 8, 3, 9], inOrder: .asce)

    step14()
}







func step14() {
    
    print("\n=== Step 14: Dictionary ===")
    
    let register: [String: Int] = ["jin": 1, "kim": 2, "gon": 3]
    
    if let attendence = register["jin"] {
        print(attendence)
    } else {
        print("nope")
    }

    var userBios = [String: String]()
    userBios["John"] = "John is a good dude"
    if let johnBio = userBios["John"] {
        print(johnBio)
    }

    step15()
}

func step15() {
    
    print("\n=== Step 15: Loops ===")
    
    let johnScores: [String: Int] = ["millie": 80, "walter": 90, "white": 500]
    let johns = ["millie", "Bobby", "Blue"]

    for johnScore in johnScores {
        print("john Names are \(johnScore.key) and their scores are \(johnScore.value)")
    }

    print(johns[1])

    for john in johns {
        if john == "Blue" {
            print("\(john) is found")
        } else {
            print("not found")
        }
    }

    step16()
}

func step16() {
    
    print("\n=== Step 16: Shopping Cart ===")
    
    var shopStock: [String] = ["Apples", "Balls", "Cars", "Dogs"]
    var cartItems: [String] = []

    func addtoCart(item: String) {
        
        for (index, stock) in shopStock.enumerated() {
            
            if stock == item {
                cartItems.append(item)
                shopStock.remove(at: index)
                break
            }
        }
    }

    func removfromCart(item: String) {
        
        for (index, cartItem) in cartItems.enumerated() {
            if cartItem == item {
                cartItems.remove(at: index)
                shopStock.append(cartItem)
                break
            }
        }
    }

    shopStock.append("Elephants")
    print(shopStock)

    addtoCart(item: "Apples")
    addtoCart(item: "Balls")
    removfromCart(item: "Balls")

    print(cartItems)
    print(shopStock)

    step17()
}

func step17() {
    
    print("\n=== Step 17: Get Even Numbers ===")
    
    for number in 1...10 {
        if number % 2 == 0 {
            print(number)
        }
    }

    func getEvenNumber(from: Int, to: Int) {
        
        for number in from...to {
            if number % 2 == 0 {
                print(number)
            }
        }
    }

    getEvenNumber(from: 22, to: 34)

    step18()
}

func step18() {
    
    print("\n=== Step 18: While Loop ===")
    var currentNumber = 0
    while currentNumber < 5 {
        print(currentNumber)
        currentNumber += 1
    }

    var currentIce = 0
    repeat {
        print(currentIce)
        currentIce += 1
    } while currentIce < 5

    step19()
}

func step19() {
    print("\n=== Step 19: Control Flow ===")
    for number in 11...20 {
        if number > 15 {
            break
        }
        print(number)
    }

    enum AppTheme {
        case lightMode, darkMode, newMode, mewMode
    }

    var appTheme: AppTheme = .darkMode
    var title: String = ""

    switch appTheme {
        
    case .darkMode:
        title = "Dark Mode on"
    default:
        title = "Unknown Mode"
    }
    print(title)

    step20()
}

func step20() {
    print("\n=== Step 20: Struct ===")
    struct Person {
        var skinColour: String
        var height: Int
        var weight: Int
        var name: String
        var lastName: String
        var address: String?

        mutating func change(weight: Int) {
            self.weight = weight
        }
    }

    let hanna = Person(skinColour: "white", height: 160, weight: 55, name: "hanna", lastName: "steings")
    print("person name is \(hanna.name)")

    step21()
}

func step21() {
    print("\n=== Step 21: Class ===")
    class Dog {
        var name: String

        init(name: String) {
            self.name = name
        }

        func bark() {
            print("woof")
        }
    }

    let mydog = Dog(name: "max")
    print("dog name is \(mydog.name)")
    mydog.bark()

    class days {
        var names = {
            return "first"
        }()
        var name: String = "monday" {
            didSet {
                print("value1 : \(name)")
            }
            willSet {
                print("value2 : \(name)")
            }
        }
    }

    let tuesdays = days()
    tuesdays.name = "tuesday"
    print("welcome \(tuesdays.name)")
    tuesdays.name = "wednesday"
    print("welcome \(tuesdays.name)")

    
    
}



runAll()
