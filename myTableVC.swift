//
//  myTableVC.swift
//  ui-tableview
//
//  Created by Ross Russell on 8/23/16.
//  Copyright © 2016 com.orangemelt. All rights reserved.
//

import UIKit

class myTableVC: UITableViewController {

  
    var cars = [ "ford", "chevy", "volvo", "BMW", "Subaru"]
    override func viewDidLoad() {
        super.viewDidLoad()
     }

        // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1 //how many sections, imports, muscle cars, etc.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return cars.count //number of rows in section
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"
        return cell
    }
}