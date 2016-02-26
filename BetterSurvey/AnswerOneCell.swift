//
//  AnswerOneCell.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/18/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//

import UIKit


class AnswerOneCell: UITableViewCell {

    @IBOutlet var RadioButton: SSRadioButton!
    
    @IBOutlet var AnswerOLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected{
          // RadioButton.selected = !RadioButton.selected
           // print("selected")
        }

        // Configure the view for the selected state
    }

}
