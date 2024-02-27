//
//  TableViewController.swift
//  Meal Planner
//
//  Created by 4d on 2/27/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    var meals:[Meal] = [
            Meal(name: "Breakfast", food: [Food(name: "Eggs", description: "Scrambled with bacon in a frying pan."), Food(name:"Hashbrowns", description: "Cut potatoes then fry in oil until brown"),  Food(name: "Bacon", description: "Key food in all breakfast meals.")]),
            
            Meal(name: "Lunch", food: [Food(name: "Sandwich", description: "Easy to fix. Always delicious"),Food(name: "Chips", description: "Put a few in the sandwhich for enhanced flavor"), Food(name: "Apple", description: "An apple a day keeps the doctor away.")]),
            
            Meal(name: "Dinner", food: [Food(name: "Steak", description: "Everyone needs some good protein."), Food(name: "Potatoes", description: "Great addition to go along with steak."), Food(name: "Brocolli", description: "Always finish out the food pyramid.")])
        ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)

        // Configure the cell...
        let food = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = "\(food.name)"
        
        cell.detailTextLabel?.text = food.description

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
