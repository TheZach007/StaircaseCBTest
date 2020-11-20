//
//  main.swift
//  StaircaseCBTest
//
//  Created by Kevin Fachal on 20/11/20.
//

import Foundation

print("Hello, World!")

let number = 0
let i = 1

print("Choose number more than 0, but less than 100")
print("Input number : ")

if let number = readLine() {
    if number.isInt {
        let numberInt = Int(number)
        if numberInt! < 0 || numberInt! >= 100 {
            print("Please input number more than 0, but less than 100!")
        } else {
            var hash = String()
            for step in (i...numberInt!).reversed() {
                hash += String(repeating: " ", count: step - 1) + String(repeating: "#", count: numberInt! + 1 - step) + "\n"
            }
            print(hash)
        }
    } else {
        print("Input number, not anything else!")
    }
}

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
