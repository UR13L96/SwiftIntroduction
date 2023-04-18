import UIKit

let age: UInt8 = 26

let min8Value = UInt8.min // 2^0 - 1
let max8Value = UInt8.max // 2^8 - 1
let min16Value = UInt16.min // 2^0 - 1
let max16Value = UInt16.max // 2^16 - 1
let min32Value = UInt32.min // 2^0 - 1
let max32Value = UInt32.max // 2^32 - 1
let min64Value = UInt64.min // 2^0 - 1
let max64Value = UInt64.max // 2^64 - 1

let f1: Float = 3.14159265
let d1: Double = 3.14159265

let meaningOfLife = 42 // Int
let pi = 3.1416 // Double
let anotherPi = 3 + 0.1416

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let someNumber = 00000097.540

let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

// Data type errors
// let cannotBeNegative: UInt8 = -13
// let tooBig: UInt8 = UInt8 + 1

let a: UInt16 = 2_000
let b: UInt8 = 1
let c = a + UInt16(b)
 
let three = 3
let decimalNumber = 0.1416
let numberPi = Double(three) + 0.1416

let integerPi = Int(3.1416)
