//
//  ViewController.swift
//  Checklists
//
//  Created by MacBook Pro on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [CheclistGroup] = [
        CheclistGroup(title: "Birthdays", imageName: "Birthdays"),
        CheclistGroup(title: "Groceries", imageName: "Groceries"),
        CheclistGroup(title: "To Do", imageName: "Drinks"),
        CheclistGroup(title: "Business Stuff", imageName: "Inbox")
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
}

