//
//  firstTableViewController.swift
//  CS207
//
//  Created by Johnny Pesavento on 1/26/22.
//

import UIKit

class myCustomCell: UITableViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalDescription: UILabel!
}

class firstTableViewController: UITableViewController {
    
    var animals: [String] = ["Cat", "Dog", "Horse"]
    var animalDescriptions: [String] = ["Mostly Friendly", "Friendly", "Always Friendly"]
    var animalPictures: [UIImage] = [UIImage(named:"cat")!, UIImage(named:"dog")!, UIImage(named:"horse")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Animals"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCustomCell
        
        cell.myImage.image = animalPictures[indexPath.row]
        cell.animalLabel.text = animals[indexPath.row]
        cell.animalDescription.text = animalDescriptions[indexPath.row]

        // Configure the cell...
        
        // cell.textLabel?.text = "Hello some data"

        return cell
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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let destVC = segue.destination as! detailViewController
        let selectRow = tableView.indexPathForSelectedRow?.row
        
        destVC.theName = animals[selectRow!]
        destVC.theDescription = animalDescriptions[selectRow!]
        destVC.localImage = animalPictures[selectRow!]
    }

}
