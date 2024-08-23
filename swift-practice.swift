// let implicitInteger = 70
// let implicitDouble = 70.0
// let explicitDouble: Double = 70

// print(type(of: implicitInteger))
// print(type(of: implicitDouble))
// print(type(of: explicitDouble))



// let label = "The width is "
// let width = 94
// let widthLabel = label + String(width)

// print(widthLabel)


// let apples = 3
// let oranges = 5
// let appleSummary = "I have \(apples) apples."
// let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// print(appleSummary)
// print(fruitSummary)


// let apples = 3
// let oranges = 5
// let quotation = """
//     Even though there's whitespace to the left,
//     the actual lines aren't indented.
//         Except for this line.
//     Double quotes (") can appear without being escaped.

//     I still have \(apples + oranges) pieces of fruit.
//     """

// print(quotation)


// var fruits = ["strawberries", "limes", "tangerines"]
// fruits[1] = "grapes"

// print(fruits)

// var occupations = [
//     "Malcolm": "Captain",
//     "Kaylee": "Mechanic"
// ]
// occupations["Jayne"] = "Public Relations"

// print(occupations)

// fruits.append("blueberries")
// print(fruits)

// fruits = []
// occupations = [:]

// let emptyArray: [String] = []
// let emptyDictionary: [String: Float]  = [:]


// enum Value {
//     case string(String)
//     case float(Float)
// }

// var values: [Value] = []
// values.append(.string("Hello"))
// values.append(.float(3.14))

// print(values)




// let individualScores = [75, 43, 103, 87, 12]
// var teamScore = 0
// for score in individualScores {
//     if score > 50 {
//         teamScore += 3
//     } else {
//         teamScore += 1
//     }
// }

// print(teamScore)

// let scoreDecoration = if teamScore > 10 {
//     "🪅"
// } else {
//     ""
// }
// print("Score:", teamScore, scoreDecoration)



// var optionalString: String? = "Hello"
// print(optionalString == nil)

// var optionalName: String? = ""
// var greeting = "Hello!"
// if let name = optionalName {
//     greeting = "Hello, \(name)"
//     print(greeting)
// }



// let nickname: String? = "apple"
// let fullName: String = "John"
// let informalGreeting = "Hi \(nickname ?? fullName)"

// print(informalGreeting)

// var nickname: String? = "buddy"

// if let nickname {
//     print("Hey, \(nickname)")
// }

// nickname = nil
// if let nickname {
//     print("Hey, \(nickname)")
// }



// let vegetable = "abakljdklspepper"
// switch vegetable {
// case "celery":
//     print("Add some raisins and make ants on a log.")
// case "cucumber", "watercress":
//     print("That would make a good tea sandwich.")
// case let x where x.hasSuffix("pepper"):
//     print("Is it a spicy \(x)?")
// default:
//     print("Everything tastes good in soup.")
// }




// let interestingNumbers = [
//     "Prime": [2, 3, 5, 7, 11, 13],
//     "Fibonacci": [1, 1, 2, 3, 5, 8],
//     "Square": [1, 4, 9, 16, 25]
// ]
// var largest = 0
// for (_, numbers) in interestingNumbers {
//     for number in numbers {
//         if number > largest {
//             largest = number
//         }
//     }
// }

// print(largest)





// var n = 2
// while n < 100 {
//     n *= 2
// }
// print(n)

// var m = 2
// repeat {
//     m *= 2
// } while m < 100
// print(m)


// var total = 0
// for i in 0..<4 {
//     total += i
// }
// print(total)


// func greet(person: String, day: String, lunch: String) -> String {
//     return "Hello \(person), today is \(day). Today's special lunch is \(lunch)."
// }
// print(greet(person: "Bob", day: "Tuesday", lunch: "chocolate"))


// func greet(_ person: String, on day: String) -> String {
//     return "Hello \(person), today is \(day)."
// }

// print(greet("John", on: "Wednesday"))

// func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//     var min = scores[0]
//     var max = scores[0]
//     var sum = 0

//     for score in scores {
//         if score > max {
//             max = score
//         } else if score < min{
//             min = score
//         }
//         sum += score
//     }

//     return (min, max, sum)
// }

// let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
// print(statistics.min)
// print(statistics.max)
// print(statistics.2)


// func returnFifteen() -> Int {
//     var y = 10
//     func add() {
//         y += 5
//     }
//     add()
//     return y
// }
// print(returnFifteen())





// func makeIncrementer() -> ((Int) -> Int) {
//     func addOne(number: Int) -> Int {
//         return 1 + number
//     }
//     return addOne
// }
// var increment = makeIncrementer()
// increment(7)




// func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> [Bool] {
//     var results: [Bool] = []
//     for item in list {
//         results.append(condition(item))
//     }
//     return results
// }

// func lessThanTen(number: Int) -> Bool {
//     return number < 10
// }

// var numbers = [20, 19, 7, 12]
// let matchResults = hasAnyMatches(list: numbers, condition: lessThanTen)
// print(matchResults)


// var numbers = [20, 19, 7, 12]
// let test1 = numbers.map({ (number: Int) -> Int in
//     let result = 3 * number
//     return result
// })
// print(test1)



// var numbers = [20, 19, 7, 12]
// let mappedNumbers = numbers.map({ number in 3 * number })
// print(mappedNumbers)



// var numbers = [20, 19, 7, 12]
// let sortedNumbers = numbers.sorted { $0 < $1 }
// print(sortedNumbers)


// class Shape {
//     var numberOfSides = 0
//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

// var shape = Shape()
// shape.numberOfSides = 7
// var shapeDescription = shape.simpleDescription()
// print(shapeDescription)


// class NamedShape {
//     var numberOfSides: Int = 0
//     var name: String

//     init(name: String) {
//         self.name = name
//     }

//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

// let shape = NamedShape(name: "長方形")
// shape.numberOfSides = 4
// print(shape.simpleDescription())





// class NamedShape {
//     var numberOfSides: Int = 0
//     var name: String

//     init(name: String) {
//         self.name = name
//     }

//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

// class Square: NamedShape {
//     var sideLength: Double

//     init(sideLength: Double, name: String) {
//         self.sideLength = sideLength
//         super.init(name: name)
//         numberOfSides = 4
//     }

//     func area() -> Double {
//         return sideLength * sideLength
//     }

//     override func simpleDescription() -> String {
//         return "A square with sides of length \(sideLength)."
//     }
// }


// class Circle: NamedShape {
//     var radius: Double

//     init(radius: Double, name: String) {
//         self.radius = radius
//         super.init(name: name)
//         numberOfSides = 0  // 円は辺がないため0とします
//     }

//     func area() -> Double {
//         return Double.pi * radius * radius
//     }

//     override func simpleDescription() -> String {
//         return "半径\(radius)の円です。"
//     }
// }

// let testCircle = Circle(radius: 5.2, name: "テスト円")
// print(testCircle.area())
// print(testCircle.simpleDescription())




// class NamedShape {
//     var numberOfSides: Int = 0
//     var name: String

//     init(name: String) {
//         self.name = name
//     }

//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

// class EquilateralTirangle: NamedShape {
//     var sideLength: Double = 0.0

//     init(sideLength: Double, name: String) {
//         self.sideLength = sideLength
//         super.init(name: name)
//         numberOfSides = 3
//     }

//     var perimeter: Double {
//         get {
//             return 3.0 * sideLength
//         }
//         set {
//             sideLength = newValue / 3.0
//         }
//     }

// override func simpleDescription() -> String {
//     return "An equilateral triangle with sides of length \(sideLength)."
// }
// }

// var triangle = EquilateralTirangle(sideLength: 3.1, name: "a triangle")
// print(triangle.perimeter)
// triangle.perimeter = 9.9
// print(triangle.sideLength)








// class NamedShape {
//     var numberOfSides: Int = 0
//     var name: String

//     init(name: String) {
//         self.name = name
//     }

//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

// class EquilateralTriangle: NamedShape {
//     var sideLength: Double = 0.0

//     init(sideLength: Double, name: String) {
//         self.sideLength = sideLength
//         super.init(name: name)
//         numberOfSides = 3
//     }

//     var perimeter: Double {
//         get {
//             return 3.0 * sideLength
//         }
//         set {
//             sideLength = newValue / 3.0
//         }
//     }

//     override func simpleDescription() -> String {
//         return "An equilateral triangle with sides of length \(sideLength)."
//     }
// }

// class Square: NamedShape {
//     var sideLength: Double = 0.0

//     init(sideLength: Double, name: String) {
//         self.sideLength = sideLength
//         super.init(name: name)
//         numberOfSides = 4
//     }

//     func area() -> Double {
//         return sideLength * sideLength
//     }

//     override func simpleDescription() -> String {
//         return "A square with sides of length \(sideLength)."
//     }
// }

// class TriangleAndSquare {
//     var triangle: EquilateralTriangle {
//         willSet {
//             square.sideLength = newValue.sideLength
//         }
//     }
//     var square: Square {
//         willSet {
//             triangle.sideLength = newValue.sideLength
//         }
//     }
//     init(size: Double, name: String) {
//         square = Square(sideLength: size, name: name)
//         triangle = EquilateralTriangle(sideLength: size, name: name)
//     }
// }
// var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test")
// print(triangleAndSquare.square.sideLength)

// print(triangleAndSquare.triangle.sideLength)

// triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
// print(triangleAndSquare.triangle.sideLength) 


// enum CompassPoint {
//     case north, south, east, west
// }

// enum Barcode {
//     case upc(Int, Int, Int, Int)
//     case qrCode(String)
// }

// let test = CompassPoint.north
// print(test)

// let productBarcode = Barcode.upc(8, 85909, 51226, 3)
// print(productBarcode)








// enum Rank: Int {
//     case ace = 1
//     case two, three, four, five, six, seven, eight, nine, ten
//     case jack, queen, king

//     func simpleDescription() -> String {
//         switch self {
//             case .ace:
//                 return "ace"
//             case .jack:
//                 return "jack"
//             case .queen:
//                 return "queen"
//             case .king:
//                 return "king"
//             default:
//                 return String(self.rawValue)
//         }
//     }

//     func compare(to other: Rank) -> String {
//         if self.rawValue < other.rawValue {
//             return "\(self.simpleDescription())は\(other.simpleDescription())より小さいです。"
//         } else if self.rawValue > other.rawValue {
//             return "\(self.simpleDescription())は\(other.simpleDescription())より大きいです。"
//         } else {
//             return "\(self.simpleDescription())と\(other.simpleDescription())は同じです。"
//         }
//     }
// }

// let ace = Rank.ace
// let aceRawValue = ace.rawValue
// print(ace)
// let queen = Rank.queen
// let queenRawValue = queen.rawValue
// print(queenRawValue)

// let king = Rank.king
// print(ace.compare(to: king))
// print(king.compare(to: ace))
// print(ace.compare(to: ace))






// enum Suit {
//     case spades, hearts, diamonds, clubs

//     func simpleDescription() -> String {
//         switch self {
//             case .spades:
//                 return "spades"
//             case .hearts:
//                 return "hearts"
//             case .diamonds:
//                 return "diamonds"
//             case .clubs:
//                 return "clubs"
//         }
//     }

//     func color() -> String {
//         switch self {
//         case .spades, .clubs:
//             return "black"
//         case .hearts, .diamonds:
//             return "red"
//         }
//     }
// }

// let hearts = Suit.hearts
// let heartDescription = hearts.simpleDescription()
// print(hearts)
// print(heartDescription)
// print(hearts.color())



// enum ServerResponse {
//     case result(String, String)
//     case failure(String)
// }

// let success = ServerResponse.result("6:00 am", "8:09 pm")
// let failure = ServerResponse.failure("Out of cheese.")

// switch success {
//     case let .result(sunrise, sunset):
//         print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//     case let .failure(message):
//         print("Failure... \(message)")
// }




// enum Rank: Int {
//     case ace = 1
//     case two, three, four, five, six, seven, eight, nine, ten
//     case jack, queen, king

//     func simpleDescription() -> String {
//         switch self {
//             case .ace:
//                 return "ace"
//             case .jack:
//                 return "jack"
//             case .queen:
//                 return "queen"
//             case .king:
//                 return "king"
//             default:
//                 return String(self.rawValue)
//         }
//     }

//     func compare(to other: Rank) -> String {
//         if self.rawValue < other.rawValue {
//             return "\(self.simpleDescription())は\(other.simpleDescription())より小さいです。"
//         } else if self.rawValue > other.rawValue {
//             return "\(self.simpleDescription())は\(other.simpleDescription())より大きいです。"
//         } else {
//             return "\(self.simpleDescription())と\(other.simpleDescription())は同じです。"
//         }
//     }
// }

// enum Suit {
//     case spades, hearts, diamonds, clubs

//     func simpleDescription() -> String {
//         switch self {
//             case .spades:
//                 return "spades"
//             case .hearts:
//                 return "hearts"
//             case .diamonds:
//                 return "diamonds"
//             case .clubs:
//                 return "clubs"
//         }
//     }

//     func color() -> String {
//         switch self {
//         case .spades, .clubs:
//             return "black"
//         case .hearts, .diamonds:
//             return "red"
//         }
//     }
// }

// struct Card {
//     var rank: Rank
//     var suit: Suit
//     func simpleDescription() -> String {
//         return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//     }
// }
// let threeOfSpades = Card(rank: .three, suit: .spades)
// let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// print(threeOfSpades)
// print(threeOfSpadesDescription)







// func fetchUserID(from server: String) async -> Int {
//     if server == "primary" {
//         return 97
//     }
//     return 501
// }

// func fetchUsername(from server: String) async -> String {
//     let userID = await fetchUserID(from: server)
//     if userID == 501 {
//         return "John Appleseed"
//     }
//     return "Guest"
// }

// func connectUser(to server: String) async {
//     async let userID = fetchUserID(from: server)
//     async let username = fetchUsername(from: server)
//     let greeting = await "Hello \(username), user ID \(userID)"
//     print(greeting)
// }

// Task {
//     await connectUser(to: "primary")
// }






// func fetchUserID(from server: String) async -> Int {
//     if server == "primary" {
//         return 97
//     }
//     return 501
// }

// let userIDs = await withTaskGroup(of: Int.self) { group in
//     for server in ["primary", "secondary", "development"] {
//         group.addTask {
//             return await fetchUserID(from: server)
//         }
//     }

//     var results: [Int] = []
//     for await result in group {
//         results.append(result)
//     }
//     return results
// }

// print(userIDs)




// func fetchUserID(from server: String) async -> Int {
//     if server == "primary" {
//         return 97
//     }
//     return 501
// }

// actor ServerConnection {
//     var server: String = "primary"
//     private var activeUsers: [Int] = []
//     func connect() async -> Int {
//         let userID = await fetchUserID(from: server)
//         activeUsers.append(userID)
//         return userID
//     }
// }

// let server = ServerConnection()
// let userID = await server.connect()

// print(userID)





// protocol ExampleProtocol {
//     var simpleDescription: String { get }
//     mutating func adjust()
// }

// class SimpleClass : ExampleProtocol {
//     var simpleDescription: String = "A very simple class."
//     var anotherProperty: Int = 69105
//     func adjust() {
//         simpleDescription += " Now 100% adjusted."
//     }
// }
// var a = SimpleClass()
// a.adjust()
// let aDescription = a.simpleDescription
// print(aDescription)

// struct SimpleStructure: ExampleProtocol {
//     var simpleDescription: String = "A simple structure"
//     mutating func adjust() {
//         simpleDescription += " (adjusted)"
//     }
// }
// var b = SimpleStructure()
// b.adjust()
// let bDescription = b.simpleDescription
// print(bDescription)

// extension Int: ExampleProtocol {
//     var simpleDescription: String {
//         return "The number \(self)"
//     }
//     mutating func adjust() {
//         self += 42
//     }
// }
// print(7.simpleDescription)

// var number = 7
// number.adjust()
// print(number)

// let protocolValue: any ExampleProtocol = a
// print(protocolValue.simpleDescription)
// print(protocolValue.anotherProperty)








enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    if printerName == "On Fire" {
        throw PrinterError.onFire
    }
    return "Job sent"
}

// do {
//     let printerResponse = try send(job: 1040, toPrinter: "On Fire")
//     print(printerResponse)
// } catch PrinterError.onFire {
//     print("I'll just put this over here, with the rest of the fire.")
// } catch let printerError as PrinterError {
//     print("Printer error: \(printerError).")
// } catch {
//     print("An unknown error occured: \(error)")
// }





// let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
// let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

// if let successMessage = printerSuccess {
//     print("Printing successful: \(successMessage)")
// } else {
//     print("Printing failed.")
// }

// if printerFailure == nil {
//     print("Printing failed due to a PrinterError.")
// }



// var fridgeIsOpen = false
// let fridgeContent = ["milk", "eggs", "leftovers"]

// func fridgeContains(_ food: String) -> Bool {
//     fridgeIsOpen = true
//     defer {
//         fridgeIsOpen = false
//     }

//     let result = fridgeContent.contains(food)
//     return result
// }
// if fridgeContains("banana") {
//     print("Found a banana")
// }
// print(fridgeIsOpen)







// func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
//     var result: [Item] = []
//     for _ in 0..<numberOfTimes {
//         result.append(item)
//     }
//     return result
// }
// print(makeArray(repeating: "knock", numberOfTimes: 4))




// enum OptionalValue<Wrapped> {
//     case none
//     case some(Wrapped)
// }
// var possibleInteger: OptionalValue<Int> = .none
// possibleInteger = .some(100)


func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
print(anyCommonElements([1, 2, 3], [4]))