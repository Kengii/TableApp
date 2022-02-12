//
//  FirstTVC.swift
//  TableApp
//
//  Created by Владимир Данилович on 9.02.22.
//

import UIKit
import GameKit

class FirstTVC: UITableViewController {

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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataPerson.firstName.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let firstName = DataPerson.firstName[indexPath.row]
        let secondName = DataPerson.secondName[indexPath.row]
        cell.textLabel?.text = "\(firstName) \(secondName)"

        // Configure the cell...

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let destVC = segue.destination as? ViewController {
            destVC.firstName = DataPerson.firstName[indexPath.row]
            destVC.secondName = DataPerson.secondName[indexPath.row]
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
}

