//
//  DemoTableViewCell.swift
//  POCRxSwift
//
//  Created by Deep on 15/11/18.
//  Copyright © 2018 Deep. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var demoDataLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(name: String) {
        demoDataLabel.text = name
    }

}
