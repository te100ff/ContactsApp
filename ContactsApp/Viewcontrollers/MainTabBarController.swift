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
            if let navigationVC = $0 as? UINavigationController {
                if let topVC = navigationVC.topViewController as? PersonsListViewController {
                    topVC.persons = persons
                } else {
                    if let topVC = navigationVC.topViewController as? FullListViewController {
                        topVC.persons = persons
                    }
                }
            }
        }
    }
    
    
}
