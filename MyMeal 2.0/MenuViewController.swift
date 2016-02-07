//
//  MenuViewController.swift
//  MyMeal 2.0
//
//  Created by Teri Minogue on 2/6/16.
//
//

import UIKit

class MenuViewController: UITableViewController{
    var dishes:[Menu] = RattydishData
    var whatButtonWasPressed: Int? {
    didSet {
    if whatButtonWasPressed == 0 {
    dishes = RattydishData }
    
    if whatButtonWasPressed == 1 {
    dishes = VdubdishData }
    
    if whatButtonWasPressed == 2 {
    dishes = andrewsDishData
        }
    if whatButtonWasPressed == 3 {
            dishes = blueroomDishData
        }
    if whatButtonWasPressed == 4 {
            dishes = josDishData
        }
    if whatButtonWasPressed == 5 {
            dishes = ivyroomDishData
        }
    tableView.reloadData()
    
    }
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.picker.delegate = self
        //self.picker.dataSource = self
        //pickerData = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
      //  self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dishes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DishCell", forIndexPath: indexPath)

        let dish = dishes[indexPath.row] as Menu
        cell.textLabel?.text = dish.name
        cell.detailTextLabel?.text = dish.allergen
        return cell
    } 
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("MenuSegue", sender: indexPath)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
        */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let indexPath:NSIndexPath = sender as! NSIndexPath
        let destination:DetailViewController = segue.destinationViewController as! DetailViewController
        destination.name = "\(dishes[indexPath.row].name!)"
        
    }


}
