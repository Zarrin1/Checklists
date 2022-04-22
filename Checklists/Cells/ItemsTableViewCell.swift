//
//  ItemsTableViewCell.swift
//  Checklists
//
//  Created by MacBook Pro on 4/22/22.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkmarkIcon: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
