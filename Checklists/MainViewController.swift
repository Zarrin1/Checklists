//
//  ViewController.swift
//  Checklists
//
//  Created by MacBook Pro on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [CheclistGroup] = [
        CheclistGroup(title: "Birthdays", imageName: "birthdaypic"),
        CheclistGroup(title: "Groceries", imageName: "groceriespic"),
        CheclistGroup(title: "To Do", imageName: "todopic"),
        CheclistGroup(title: "Business Stuff", imageName: "pic")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group: CheclistGroup = groups[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = group.title
        return cell
        
    }
}

