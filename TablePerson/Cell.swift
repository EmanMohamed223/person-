//
//  Cell.swift
//  TablePerson
//
//  Created by Eman on 12/01/2023.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    
    @IBOutlet weak var age: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
