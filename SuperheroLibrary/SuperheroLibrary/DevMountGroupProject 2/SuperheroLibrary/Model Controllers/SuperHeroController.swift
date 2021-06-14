//
//  superherocontroller.swift
//  SuperheroLibrary
//
//  Created by Joshua Hoyle on 6/14/21.
//

import UIKit

class SuperheroController {
    //MARK: - Shared Instance
    static let sharedInstance = SuperheroController()
    
    
    //MARK: - SOT
    
    var superheroes: [Superhero] = [gavin, josh, justin, ethan]
    
    //MARK: - CRUD
    
    //MARK: - Persistence
    
    func createPersistenceStore() -> URL {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = url[0].appendingPathComponent("Superhero.json")
        return fileURL
    }
    
    func saveToPersistenceStore() {
        do {
            let data = try JSONEncoder().encode(superheroes)
            try data.write(to: createPersistenceStore())
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
        }
    }
    
    func loadFromPersistenceStore() {
        do {
            let data = try Data(contentsOf: createPersistenceStore())
            superheroes = try JSONDecoder().decode([Superhero].self, from: data)
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
        }
    }
    
    
}
