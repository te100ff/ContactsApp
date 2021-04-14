//
//  FullListViewController.swift
//  ContactsApp
//
//  Created by Stanislav Testov on 13.04.2021.
//

import UIKit

class FullListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    // MARK: - Cell view setup
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
       
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.circle.fill")?.withTintColor(.systemTeal, renderingMode: .alwaysOriginal)
            content.textProperties.color = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "paperplane.circle.fill")?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
            content.textProperties.font = .italicSystemFont(ofSize: 17)
            content.textProperties.color = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            
        }
        cell.backgroundColor = #colorLiteral(red: 0.8201146722, green: 0.9668077826, blue: 0.7056682706, alpha: 1)
        cell.contentConfiguration = content

        return cell
    }
// MARK: - Section view setup
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        45
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4922565222, blue: 0, alpha: 0.8187603477)
        
        let image = UIImageView(image: UIImage(systemName: "person"))
        image.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
        view.addSubview(image)
        
        let label = UILabel()
        label.frame = CGRect(x: 45, y: 5, width: 300, height: 35)
        label.text = persons[section].fullName
        label.font = .boldSystemFont(ofSize: 25)
        view.addSubview(label)
        
        return view
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
