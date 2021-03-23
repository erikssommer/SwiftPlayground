//
//  main.swift
//  Playground
//
//  Created by Erik Storås Sommer on 23/03/2021.
//

let tall = [4,3,4,3]

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
