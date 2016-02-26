//
//  SurveyFunction.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/23/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//

import Foundation
import UIKit


func OriginalOneAnswerCell (cell: AnswerOneCell, cellbackground: UIColor!, celltextcolor: UIColor!, RadioController: SSRadioButtonsController!, AnwserArray: NSMutableArray, index: Int, NSInt: Int, NSBool: Bool) ->AnswerOneCell {
    
    cell.backgroundColor = cellbackground
    
    cell.AnswerOLabel.textColor = celltextcolor
    
    cell.RadioButton.circleColor = celltextcolor
    
    cell.AnswerOLabel.text = AnwserArray.objectAtIndex(index) as? String
    
    
        RadioController.addButton(cell.RadioButton)
    
    
    if (NSInt == index ) && NSBool && !cell.RadioButton.selected {
        
        cell.RadioButton.selected = true
        
    }
    
    return cell
}

