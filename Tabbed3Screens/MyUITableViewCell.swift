//
//  MyUITableViewCell.swift
//  CustomUITableViewCell1
//
//  Created by Yoda Dev on 5/7/16.
//  Copyright © 2016 Yury G. All rights reserved.
//

import UIKit
import AVKit

class MyUITableViewCell: UITableViewCell {
    @IBOutlet weak var myLabel1: UILabel!

    @IBOutlet weak var mysubTitleLabel1: UILabel!
    

    @IBAction func myButtonPressed(sender: UIButton) {
        print("button pressed")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
