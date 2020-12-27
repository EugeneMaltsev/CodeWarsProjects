//
//  main.swift
//  GoodvsEvil
//
//  Created by Eugene Maltsev on 05.12.2020.
//

import Foundation


func evaluate(good: String, vsEvil evil: String) -> String {

    let goodGuys = good.split(separator: " ").map {Int($0)!}
    let badGuys  = evil.split(separator: " ").map {Int($0)!}

    var light = [Int]()
    var dark  = [Int]()

    for (index, element) in goodGuys.enumerated() {
        if index == 0 {
            light.append(element * 1)
        } else if index == 1 {
            light.append(element * 2)
        } else if index == 2 {
            light.append(element * 3)
        } else if index == 3 {
            light.append(element * 3)
        } else if index == 4 {
            light.append(element * 4)
        } else if index == 5 {
            light.append(element * 10)
        }

    }

    for (index, element) in badGuys.enumerated() {
        if index == 0 {
            dark.append(element * 1)
        } else if index == 1 {
            dark.append(element * 2)
        } else if index == 2 {
            dark.append(element * 2)
        } else if index == 3 {
            dark.append(element * 2)
        } else if index == 4 {
            dark.append(element * 3)
        } else if index == 5 {
            dark.append(element * 5)
        } else if index == 6 {
            dark.append(element * 10)
        }

    }

    if light.reduce(0, +) > dark.reduce(0, +) {
        return "Battle Result: Good triumphs over Evil"
    }

    if light.reduce(0, +) < dark.reduce(0, +) {
        return "Battle Result: Evil eradicates all trace of Good"
    } else {
        return "Battle Result: No victor on this battle field"
    }

}

print(evaluate(good: "2 3 4 2 3 1", vsEvil: "1 1 2 1 0 3 10"))

//-----MORE ELEGANT-----
//import Foundation
//
//func worth(of string: String, coefficients: [Int]) -> Int {
//  let counts = string.components(separatedBy: " ").flatMap { Int($0) }
//  return zip(counts, coefficients).map(*).reduce(0, +)
//}
//
//func evaluate(good: String, vsEvil evil: String) -> String {
//  let goodWorth = worth(of: good, coefficients: [1, 2, 3, 3, 4, 10])
//  let evilWorth = worth(of: evil, coefficients: [1, 2, 2, 2, 3, 5, 10])
//
//  if goodWorth > evilWorth { return "Battle Result: Good triumphs over Evil" }
//  else if goodWorth < evilWorth { return "Battle Result: Evil eradicates all trace of Good" }
//  else { return "Battle Result: No victor on this battle field" }
//
//}
//----------------------



//Hobbit  - 1   |  Orks     - 1
//Man     - 2   |  Man      - 2
//Elves   - 3   |  Wargs    - 2
//Dwarf   - 3   |  Goblin   - 2
//Eagles  - 4   |  Uruk-Hai - 3
//Wizards - 10  |  Trolls   - 5
//                 Wizards  - 10



/*
 Description

 Middle Earth is about to go to war. The forces of good will have many battles with the forces of evil. Different races will certainly be involved. Each race has a certain worth when battling against others. On the side of good we have the following races, with their associated worth:

 Hobbits: 1
 Men: 2
 Elves: 3
 Dwarves: 3
 Eagles: 4
 Wizards: 10
 On the side of evil we have:

 Orcs: 1
 Men: 2
 Wargs: 2
 Goblins: 2
 Uruk Hai: 3
 Trolls: 5
 Wizards: 10
 
 Although weather, location, supplies and valor play a part in any battle, if you add up the worth of the side of good and compare it with the worth of the side of evil, the side with the larger worth will tend to win.

 Thus, given the count of each of the races on the side of good, followed by the count of each of the races on the side of evil, determine which side wins.

 Input:

 The function will be given two parameters. Each parameter will be a string of multiple integers separated by a single space. Each string will contain the count of each race on the side of good and evil.

 The first parameter will contain the count of each race on the side of good in the following order:

 Hobbits, Men, Elves, Dwarves, Eagles, Wizards.
 The second parameter will contain the count of each race on the side of evil in the following order:

 Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.

Tokio, [26 Dec 2020, 16:31:49]:
All values are non-negative integers. The resulting sum of the worth for each side will not exceed the limit of a 32-bit integer.

 Output:

 Return "Battle Result: Good triumphs over Evil" if good wins, "Battle Result: Evil eradicates all trace of Good" if evil wins, or "Battle Result: No victor on this battle field" if it ends in a tie.
 */
