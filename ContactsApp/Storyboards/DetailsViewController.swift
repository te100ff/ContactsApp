//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Stanislav Testov on 13.04.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "E-mail: \(person.email)"
    }
    
    
    
    
}
