//
//  MainTabBarController.swift
//  ContactsApp
//
//  Created by Stanislav Testov on 13.04.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSender()
    }
    
    func dataSender() {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach {
            if let personsVC = $0 as? FullListViewController {
                personsVC.persons = persons
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! PersonsListViewController
                userInfoVC.persons = persons
            }
        }
    }
    
    
}
