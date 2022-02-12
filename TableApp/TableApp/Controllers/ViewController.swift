//
//  ViewController.swift
//  TableApp
//
//  Created by Владимир Данилович on 9.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    var firstName: String?
    var secondName: String?

    @IBOutlet weak var nameSurName: UILabel!
    @IBOutlet weak var phoneEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(firstName ?? "") \(secondName ?? "")"
        nameSurName.text = DataPerson.email.randomElement()
        phoneEmail.text = DataPerson.numberPhone.randomElement()

        // Do any additional setup after loading the view.
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
