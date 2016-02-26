//
//  TestCell.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/26/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell {

    
    
    @IBOutlet var RadioChangeButton: UIButton!
    
    @IBOutlet var AnswerOneLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
