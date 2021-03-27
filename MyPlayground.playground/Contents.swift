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
