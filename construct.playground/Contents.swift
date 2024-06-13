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
