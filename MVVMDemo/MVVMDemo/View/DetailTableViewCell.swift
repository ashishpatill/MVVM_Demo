//
//  DetailTableViewCell.swift
//  MVVMDemo
//
//  Created by Ashish Pisey on 6/20/18.
//  Copyright © 2018 Ashish Pisey. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

  @IBOutlet weak var fullName: UILabel!
  @IBOutlet weak var age: UILabel!
  @IBOutlet weak var city: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
