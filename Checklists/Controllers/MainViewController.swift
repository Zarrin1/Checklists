//
//  ViewController.swift
//  Checklists
//
//  Created by MacBook Pro on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [CheclistGroup] = [
        CheclistGroup(title: "Birthdays", imageName: "Birthdays", items: [
            ChecklistsItem(isChecked: true, name: "День рождение 24 марта")
                        ]),
        
        CheclistGroup(title: "Groceries", imageName: "Groceries", items: [
            ChecklistsItem(isChecked: false, name: "Tree")
        ]),
        CheclistGroup(title: "To Do", imageName: "Drinks", items: [
            ChecklistsItem(isChecked: true, name: "Inbox")
        ]),
        CheclistGroup(title: "Business Stuff", imageName: "Inbox", items: [
            ChecklistsItem(isChecked: false, name: "Business")
    ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group = groups[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell" , for: indexPath) as! GroupTableViewCell
        
        cell.titleLabel.text = group.title
        cell.iconView.image = UIImage(named: group.imageName)
        return cell
        
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MailToGroupDetails" {
            print ("Transfer information")
            if let vc = segue.destination as?
                GroupDetailsTableViewController {
                if let index = tableView.indexPathForSelectedRow {
                    if let indexPath = tableView.indexPathForSelectedRow {
                        vc.items = groups[indexPath.row].items
                }
            }
        }
    }
}
}

