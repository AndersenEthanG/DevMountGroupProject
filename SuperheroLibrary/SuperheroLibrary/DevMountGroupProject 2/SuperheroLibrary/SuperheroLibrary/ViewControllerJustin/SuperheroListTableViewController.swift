//
//  SuperheroListTableViewController.swift
//  SuperheroLibrary
//
//  Created by Justin Webster on 6/14/21.
//

import UIKit

class SuperheroListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SuperheroController.sharedInstance.superheroes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as? FirstHeroTableViewCell else {return UITableViewCell()}
        
        let hero = SuperheroController.sharedInstance.superheroes[indexPath.row]
        
        cell.hero = hero

        return cell
    }

 
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destinationVC = segue.destination as? SuperHeroDetailTableViewController else {return}
            
            let heroToSend = SuperheroController.sharedInstance.superheroes[indexPath.row]
            
            destinationVC.hero = heroToSend
        }
    }
} //End of Class
