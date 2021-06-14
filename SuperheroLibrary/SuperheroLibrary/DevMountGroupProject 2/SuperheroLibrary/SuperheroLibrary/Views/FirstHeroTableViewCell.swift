//
//  FirstHeroTableViewCell.swift
//  SuperheroLibrary
//
//  Created by Justin Webster on 6/14/21.
//

import UIKit

class FirstHeroTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    
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
        heroNameLabel.text = hero?.name
        heroImage.image = UIImage(named: hero?.name ?? "")
        heroImage.addCornerRadius()
        heroNameLabel.addCornerRadius()
        heroNameLabel.layer.masksToBounds = true
        heroNameLabel.layer.cornerRadius = 15
        
    }
}//End of Class
