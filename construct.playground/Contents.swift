import UIKit

let arr = ["Mike", "Andy", "Messy", "Zulu", "Oscar"]

let sorted = arr.sorted { name1, name2 in
    if name1 == "Messy" {
        return true
    } else if name2 == "Messy" {
        return false
    }
    
    return name1 < name2
}

print(sorted)

let x = arr.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Messy" {
        return true
    } else if name2 == "Messy" {
        return false
    }
    
    return name1 < name2
})

print(x)

// -------------------------------------------------------------------

func makeArray(of size: Int, using generator: ()->Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let arr2 = makeArray(of: 10) {
    Int.random(in: 1...50)
}

print(arr2)

// -------------------------------------------------------------------

func doImportantWork(first: ()->Void, second: ()->Void, third: ()->Void) {
    print("About to start the first...")
    first()
    print("About to start the second...")
    second()
    print("About to start the third...")
    third()
    print("All work has been done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

