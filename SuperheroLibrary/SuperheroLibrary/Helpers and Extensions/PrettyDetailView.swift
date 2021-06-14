//
//  PrettyDetailView.swift
//  SuperheroLibrary
//
//  Created by Ethan Andersen on 6/14/21.
//

import UIKit

extension SuperheroDetailViewController {
    
    func prettyName() {
        let 🃏 = name
        
        🃏?.layer.masksToBounds = true
        🃏?.layer.cornerRadius = 15
        🃏?.layer.shadowColor = UIColor.black.cgColor
    } // End of Function
    
    func prettySecretIdentity() {
        let 🃏 = secretIdentity
        
        
    } // End of Function
    
    func prettyImage() {
        let 🃏 = image
        
        
    } // End of Function
    
    func prettyOrigin() {
        let 🃏 = origin
        
        
    } // End of Function
    
    
} // End of Extension
