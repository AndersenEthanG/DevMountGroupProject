//
//  SecondHeroTableViewCell.swift
//  SuperheroLibrary
//
//  Created by Gavin Woffinden on 6/14/21.
//

import UIKit

class SecondHeroTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var backgroundTextView: UITextView!
    @IBOutlet weak var superpowerTextView: UITextView!
    @IBOutlet weak var identityTextView: UITextView!
    
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
        backgroundTextView.text = "\(String(describing: hero?.background)) + \(String(describing: hero?.hometown))"
        superpowerTextView.text = hero?.superpower
        identityTextView.text = hero?.secretIdentity
    }
}//End of Class
