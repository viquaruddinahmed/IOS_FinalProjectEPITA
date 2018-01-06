//
//  TableViewController.swift
//  DangerousSharks
//
//  Created by viquar on 01/01/2018.
//  Copyright © 2018 viquar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private let brain: sharkBrain = sharkBrain();
    var passingValue: [String] = ["","","",""];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return brain.sharkLength
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        let arr = brain.getDetails(index: indexPath.row)
        
        // Configure the cell...
        cell.textLabel?.text = arr[0]
        cell.detailTextLabel?.text = arr[1]
        
        return cell
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Get the passing value details
        passingValue = brain.getFullDetails(index: indexPath.row)
        print("Select \(indexPath.row)")
        
        self.performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        // initialize new view controller and cast it as your view controller
        let viewController = segue.destination as! ViewController;
        // your new view controller should have property that will store passed value
        viewController.passedValue = passingValue;
    }
    
    
}

