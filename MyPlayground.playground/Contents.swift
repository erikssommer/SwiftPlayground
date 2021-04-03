//
//  main.swift
//  Playground
//
//  Created by Erik Storås Sommer on 23/03/2021.
//

let tall = [4,3,4,3,5,7,1,9]

loop()

class Person {
    var navn: String
    var alder: Int
    
    init(navn: String, alder: Int) {
        self.navn = navn
        self.alder = alder
    }
    
    func who_am_i() {
        print("I am " + self.navn + " and I am \(self.alder)  years old")
    }
    
}

func beregn() -> Void {
    var sum = 0
    for i in tall{
        sum += i
    }
    print(sum)
    makePerson()
}

func makePerson() -> Void {
    let erik = Person(navn:"Erik", alder: 22)
    erik.who_am_i()
    let nora = Person(navn:"Nora", alder: 16)
    nora.who_am_i()
    
    let svar = parametere(navn:"Jens", alder:25)
    print(svar)
}

func parametere(navn: String, alder: Int) -> String {
    print(navn)
    print(alder)
    return "Nice"
}

func loop() -> Void {
    for i in 1 ... 10{
        if i == 2 {
            beregn()
        }
        print(i)
    }
}

print("-----------Algo-----------")

func binarysearch(list: [Int], key: Int, left: Int, right: Int) -> Int {
    if left <= right {
        let split = (left + right) / 2;
        if list[split] > key {
            return binarysearch(list: list, key: key, left: left, right: split-1);
        }else if list[split] < key {
            return binarysearch(list: list, key: key, left: split+1, right: right);
        }else{
            return split;
        }
    }else{
        return -1;
    }
}

let solve = binarysearch(list: tall, key: 7, left: 0, right: tall.count-1)

print(solve);

extension Array where Element: Comparable {

    func bubbleSort() -> Array<Element> {
                
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
                
        //mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<self.count {
            let passes = (output.count - 1) - primaryIndex
                        
            //"half-open" range operatorı
            for secondaryIndex in 0..<passes {
                let key = output[secondaryIndex]
                
                //compare / swap positions
                if (key > output[secondaryIndex + 1]) {
                  output.swapAt(secondaryIndex, secondaryIndex + 1)
                }
            }
        }
                
        return output
    }
    
    func insertionSort() -> Array<Element> {
            
            //check for trivial case
            guard self.count > 1 else {
                return self
            }
            
            //mutated copy
            var output: Array<Element> = self
            
            for primaryindex in 0..<output.count {
                
                let key = output[primaryindex]
                var secondaryindex = primaryindex
                
                while secondaryindex > -1 {
                    if key < output[secondaryindex] {
                        
                        //move to correct position
                        output.remove(at: secondaryindex + 1)
                        output.insert(key, at: secondaryindex)
                    }
                    
                    secondaryindex -= 1
                }
            }
            
            return output
        }
}
let numberList : Array<Int> = [8, 2, 10, 9, 7, 5]
print("List before sorting: \(numberList)")
//execute sort
let resultsBubleSort: Array<Int> = numberList.bubbleSort()
print("Bubble sort: \(resultsBubleSort)")
//execute sort
let resultsInsertionSort: Array<Int> = numberList.insertionSort()
print("Insertion sort: \(resultsInsertionSort)")
