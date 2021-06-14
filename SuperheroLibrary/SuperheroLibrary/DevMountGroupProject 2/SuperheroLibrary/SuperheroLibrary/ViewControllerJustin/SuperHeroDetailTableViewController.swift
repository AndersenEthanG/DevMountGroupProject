//
//  SuperHeroDetailTableViewController.swift
//  SuperheroLibrary
//
//  Created by Gavin Woffinden on 6/14/21.
//

import UIKit

class SuperHeroDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var identityTextView: UITextView!
    @IBOutlet weak var superpowerTextView: UITextView!
    @IBOutlet weak var backgroundTextView: UITextView!
    @IBOutlet weak var superpowerLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    var hero: Superhero?

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000
    }
    
    
    func updateViews() {
        backgroundTextView.text = hero?.background
        superpowerTextView.text = hero?.superpower
        identityTextView.text = hero?.secretIdentity
        backgroundTextView.addCornerRadius()
        superpowerTextView.addCornerRadius()
        identityTextView.addCornerRadius()
        superpowerLabel.layer.masksToBounds = true
        superpowerLabel.layer.cornerRadius = 15
        identityLabel.layer.masksToBounds = true
        identityLabel.layer.cornerRadius = 15
    }
  /*  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? SecondHeroTableViewCell else {return UITableViewCell()}
        let hero = SuperheroController.sharedInstance.superheroes[indexPath.row]
        
        cell.hero = hero

        return cell
    }
*/
}
