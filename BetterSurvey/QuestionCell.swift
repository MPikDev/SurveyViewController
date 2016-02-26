//
//  QuestionCell.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/18/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//
// This class is for the question label in the survey

import UIKit

class QuestionCell: UITableViewCell {
    
    //this is the var that you want to assign to display the question
    @IBOutlet var QuestionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
