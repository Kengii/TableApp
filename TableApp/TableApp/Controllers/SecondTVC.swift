//
//  SecondTVC.swift
//  TableApp
//
//  Created by Владимир Данилович on 9.02.22.
//

import UIKit

class SecondTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections

        return DataPerson.firstName.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let firstName = DataPerson.firstName[section]
        let secondName = DataPerson.secondName[section]
        let section = firstName + " " + secondName
        return section
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        let email = DataPerson.email[indexPath.section]
        let phone = DataPerson.numberPhone[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? email : phone
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
