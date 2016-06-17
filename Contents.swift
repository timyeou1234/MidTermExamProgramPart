//: Playground - noun: a place where people can play

import UIKit

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    let anArray = array1 + array2
    
    let set1 = Set<Int>(anArray)
    var compareArray:[Int] = []
    for x in set1{
        compareArray.append(x)
    }
    var ansArray:[Int] = []
    for _ in 0...set1.count-1{
        ansArray.append(0)
    }
    var position = 0
    var i = 0
    var smallerThan = 0
    while  i < set1.count {
        for y in 0...set1.count-1{
            if compareArray[i] < compareArray[y]{
                smallerThan += 1
            }
        }
        position = compareArray.count - smallerThan - 1
        ansArray[position] = compareArray[i]
        i += 1
        position = 0
        smallerThan = 0
    }
    return ansArray
}

sortArray([1,2,5,7], array2: [2,4,6,7,5])
sortArray([3,4,5,2,1], array2: [3,5,7,8,9])



