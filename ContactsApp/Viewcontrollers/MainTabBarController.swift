//
//  MainTabBarController.swift
//  ContactsApp
//
//  Created by Stanislav Testov on 13.04.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        xxx()
        
        
    }
    
    func xxx() {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? FullListViewController {
                welcomeVC.persons = persons
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! PersonsListViewController
                userInfoVC.persons = persons
            }
        }
    }
    
    
}
