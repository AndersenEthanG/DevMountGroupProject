//
//  Style.swift
//  SuperheroLibrary
//
//  Created by Gavin Woffinden on 6/14/21.
//

import UIKit

extension UIView {
    func addCornerRadius(_ radius: CGFloat = 10) {
            self.layer.cornerRadius = radius
        }
        
        func addRoundedCorner(_ radius: CGFloat = 5) {
            self.layer.cornerRadius = radius
        }
}

