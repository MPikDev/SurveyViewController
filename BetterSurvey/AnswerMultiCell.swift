//
//  AnswerMultiCell.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/18/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//
// This class is for the answers that have checkbox and label in the survey

import UIKit

class AnswerMultiCell: UITableViewCell {
    
    //this is the answer label
    @IBOutlet var AnswerMLabel: UILabel!
    

    //this is the check box button
    @IBOutlet var CheckBoxButton: CheckBox!
    
    override func awakeFromNib() {
    
        super.awakeFromNib()
        // Initialization code
    }
    
    //cell action
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //this is to make the check button be selected when you ckick the cell
       if selected {
        CheckBoxButton.isChecked = !CheckBoxButton.isChecked
       // CheckBoxAction(CheckBoxButton.isChecked)

        }
        // Configure the view for the selected state
    }

}
