//
//  SectionLabelCell.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/18/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//
// This class is for the section label in the survey

import UIKit

class SectionLabelCell: UITableViewCell {

    //the label text var that will display in the cell
    @IBOutlet var SectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
