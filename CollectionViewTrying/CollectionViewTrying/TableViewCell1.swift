//
//  TableViewCell1.swift
//  CollectionViewTrying
//
//  Created by MacBook Pro on 5/4/21.
//

import UIKit

class TableViewCell1: UITableViewCell {
    
    
    @IBOutlet weak var Timageview11: UIImageView!
    
    @IBOutlet weak var Tlabel11: UILabel!
    
    @IBOutlet weak var Tlabel22: UILabel!
    
    @IBOutlet weak var Timageview22: UIImageView!
    
    
    override func awakeFromNib() {
        
        Timageview11.layer.cornerRadius = Timageview11.frame.height / 2
        Timageview11.layer.cornerRadius = Timageview11.frame.width / 2
        Timageview22.layer.cornerRadius = Timageview22.frame.height / 2
        Timageview22.layer.cornerRadius = Timageview22.frame.width / 2
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
