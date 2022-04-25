//
//  DateTableViewCell.swift
//  Checklists
//
//  Created by MacBook Pro on 4/25/22.
//

import UIKit

class DateTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var calendarPicker: UIDatePicker!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
