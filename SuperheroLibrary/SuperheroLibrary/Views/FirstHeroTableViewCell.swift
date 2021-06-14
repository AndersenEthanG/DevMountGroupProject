//
//  FirstHeroTableViewCell.swift
//  SuperheroLibrary
//
//  Created by Justin Webster on 6/14/21.
//

import UIKit

class FirstHeroTableViewCell: UITableViewCell {

    //MARK: - Outlets
    
    //MARK: - NIB
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    //MARK: - Properties
    
    var hero: Superhero? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Functions
    
    func updateViews() {
    //UPDATE Image and Label
    }
}//End of Class
