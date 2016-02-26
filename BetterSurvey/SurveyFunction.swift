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
    /*
    cell.backgroundColor = SecondaryAnswerCellColor
    cell.AnswerOLabel.textColor = SecondaryAnswerTextColor
    cell.RadioButton.circleColor = SecondaryAnswerTextColor
    cell.AnswerOLabel.text = self.HowOftenWeekAnswer1EE.objectAtIndex(indexPath.row) as? String
    HowOftenWeekAnswer1EEradioButtonControl?.addButton(cell.RadioButton)
    if (defaults.integerForKey("Answer1EnvironmentExteriorAnswer1") == indexPath.row) && defaults.boolForKey("HowOftenWeekAnswer1EEradioButtonControl") {
    cell.RadioButton.selected = true
    }
    */
}



func OneAnswerCellCreator (cell: AnswerOneCell, cellbackground: UIColor!, celltextcolor: UIColor!, RadioController: SSRadioButtonsController!, AnwserArray: NSMutableArray, index: Int, NSInt: Int, NSBool: Bool) ->AnswerOneCell {
   
    cell.backgroundColor = cellbackground
    
    cell.AnswerOLabel.textColor = celltextcolor
    
    cell.RadioButton.circleColor = celltextcolor
    
   cell.AnswerOLabel.text = AnwserArray.objectAtIndex(index) as? String

    if AnwserArray.count != RadioController.lenthOfButtonArray() {
        
        RadioController.addButton(cell.RadioButton)
    }

    if (NSInt == index ) && NSBool && !cell.RadioButton.selected {
        
        RadioController.pressed(cell.RadioButton)
    
    }
    else{
        cell.RadioButton.selected = false
    }
    
    return cell
    /*
    cell.backgroundColor = SecondaryAnswerCellColor
    cell.AnswerOLabel.textColor = SecondaryAnswerTextColor
    cell.RadioButton.circleColor = SecondaryAnswerTextColor
    cell.AnswerOLabel.text = self.HowOftenWeekAnswer1EE.objectAtIndex(indexPath.row) as? String
    HowOftenWeekAnswer1EEradioButtonControl?.addButton(cell.RadioButton)
    if (defaults.integerForKey("Answer1EnvironmentExteriorAnswer1") == indexPath.row) && defaults.boolForKey("HowOftenWeekAnswer1EEradioButtonControl") {
        cell.RadioButton.selected = true
    }
    */
}

func Test2OneAnswerCellCreator (cell: AnswerOneCell, cellbackground: UIColor!, celltextcolor: UIColor!, RadioController: SSRadioButtonsController!, AnwserArray: NSMutableArray, index: Int, NSInt: Int, NSBool: Bool) ->AnswerOneCell {
    
    cell.RadioButton = RadioController.ButtonArrayReturn(index) as? SSRadioButton
    if cell.RadioButton.selected == true {
        cell.RadioButton.selected = true
    }
    cell.backgroundColor = cellbackground
    
    cell.AnswerOLabel.textColor = celltextcolor
    
    cell.RadioButton.circleColor = celltextcolor
    
    cell.AnswerOLabel.text = AnwserArray.objectAtIndex(index) as? String
    
    return cell
}

func TestOneAnswerCellCreator (cell: TestAnswerOneCell, cellbackground: UIColor!, celltextcolor: UIColor!, RadioController: SSRadioButtonsController!, AnwserArray: NSMutableArray, index: Int, NSInt: Int, NSBool: Bool) ->TestAnswerOneCell {
    
    print(cell.RadioChangeButton)
    cell.RadioChangeButton = RadioController.ButtonArrayReturn(index)
    
    print(cell.RadioChangeButton)
    print(RadioController.selectedButton())
    print("\n")
    
    cell.backgroundColor = cellbackground
    
    cell.AnswerOneLabel.textColor = celltextcolor
    
   // cell.RadioChangeButton.circleColor = celltextcolor
    
    //cell.RadioButton.tag = index
    
    cell.AnswerOneLabel.text = AnwserArray.objectAtIndex(index) as? String
    
    //print(AnwserArray.count)
    /*
    if AnwserArray.count != RadioController.lenthOfButtonArray() {
    
    RadioController.addButton(cell.RadioButton)
    }
    
    if (NSInt == index ) && NSBool && !cell.RadioButton.selected {
    
    RadioController.pressed(cell.RadioButton)
    
    }
    else{
    cell.RadioButton.selected = false
    }
    */
    let defaults = NSUserDefaults.standardUserDefaults()
    //print(NSInt)
    // print(defaults.integerForKey("Answer1EnvironmentExteriorAnswer1"))
    //print("\n")
    
    //print("\(RadioController.selectedButton()?.tag)  \(RadioController)")
    //print(" ns user bool \(NSBool)  index button \(NSInt)")
    
    return cell
    
}



