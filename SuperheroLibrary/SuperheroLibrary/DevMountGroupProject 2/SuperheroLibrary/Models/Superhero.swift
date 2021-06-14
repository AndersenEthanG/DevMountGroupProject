//
//  superhero
// Superhero.swift
//  SuperheroLibrary
//
//  Created by Joshua Hoyle on 6/14/21.
//

import UIKit


class Superhero: Codable {
    let name: String
    let background: String
    let hometown: String
    let superpower: String
    let secretIdentity: String
        
    init(name: String, background: String, hometown: String, superpower: String, secretIdentity: String) {
        self.name = name
        self.background = background
        self.hometown = hometown
        self.superpower = superpower
        self.secretIdentity = secretIdentity
    }
}

let gavin = Superhero(name: "Gavin Woffinden", background: "I am he who is tall and wobbly, like a cooked spaghetti noodle in a quick breeze. I live to protect, to uplift, and to f***ing party.", hometown: "Origin- Seattle, WA", superpower: "Dissarming Indiffernce, Orangutang Limbs", secretIdentity: "Justice-Upholding Superpower WeilderMan")
let josh = Superhero(name: "Josh Hoyle", background: "Formerly a mild mannered sales rep turned Lyft driver who had the audacity to think he can code.", hometown: "Origin- Tacompton, WA", superpower: "The uncanny ability to not see objects that obviously right in front of his face.", secretIdentity: "Your Friendly Neighborhood Bud Tender")
let justin = Superhero(name: "Justin Webster", background: "Found abandoned in a field late at night as a baby and was taken in by locals. Later in life learned of his powers, but was forced to keep them a secret as his family raised him to fight Xcode Bugs.", hometown: "Origin- ", superpower: " Bug Laser Vision - the ability to destroy bugs on sight with laser eyes", secretIdentity: "Bug-Smasher Man")
let ethan = Superhero(name: "Ethan Anderson", background: "My name is Ethan, I enjoy bubble baths, long walks on the beach, and dipping my toes in peanut butter.", hometown: "", superpower: "Max RAM blast", secretIdentity: "Bubble RAM Man")
