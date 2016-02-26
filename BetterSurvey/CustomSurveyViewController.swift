//
//  CustomSurveyViewController.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/23/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//

import UIKit

class CustomSurveyViewController: UIViewController  , SSRadioButtonControllerDelegate {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        
        
        //the tableview that will hold the cells
        @IBOutlet var tableView: UITableView!
        
        var SectionCellColor: UIColor!
        var sectionTextColor: UIColor!
        var MainQuestionCellColor: UIColor!
        var MainQuestionTextColor: UIColor!
        var MainAnswerCellColor: UIColor!
        var MainAnswerTextColor: UIColor!
        var SecondaryQuestionCellColor: UIColor!
        var SecondaryQuestionTextColor: UIColor!
        var SecondaryAnswerCellColor: UIColor!
        var SecondaryAnswerTextColor: UIColor!
        
        //Buttons for Radio button array

    let Button0: SSRadioButton = SSRadioButton()
    let Button1: SSRadioButton = SSRadioButton()
    let Button2: SSRadioButton = SSRadioButton()
    let Button3: SSRadioButton = SSRadioButton()
    let Button4: SSRadioButton = SSRadioButton()
    let Button5: SSRadioButton = SSRadioButton()
    let Button6: SSRadioButton = SSRadioButton()
    let Button7: SSRadioButton = SSRadioButton()
    let Button8: SSRadioButton = SSRadioButton()
    let Button9: SSRadioButton = SSRadioButton()
    
    let Button01: SSRadioButton = SSRadioButton()
    let Button11: SSRadioButton = SSRadioButton()
    let Button21: SSRadioButton = SSRadioButton()
    let Button31: SSRadioButton = SSRadioButton()
    let Button41: SSRadioButton = SSRadioButton()
    let Button51: SSRadioButton = SSRadioButton()
    let Button61: SSRadioButton = SSRadioButton()
    let Button71: SSRadioButton = SSRadioButton()
    let Button81: SSRadioButton = SSRadioButton()
    let Button91: SSRadioButton = SSRadioButton()
    
        
        //how many section there will be 6 answer has 38, 7 answer has 45
        
        var EnvironmentExteriorSection = 4
        //the arrays that the text for the cell are stored
        
        var Section1: NSMutableArray! = NSMutableArray()
        var Question1: NSMutableArray! = NSMutableArray()

        
        
        var HowOftenWeekQuestionForAnswer1EE: NSMutableArray! = NSMutableArray()
        var HowOftenWeekAnswer1EE: NSMutableArray! = NSMutableArray()
        var HowOftenNightAnswer1EE: NSMutableArray! = NSMutableArray()

    
    
        //these are for the radio buttons to work
        
        var HowOftenWeekAnswer1EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
        var HowOftenNightAnswer1EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
        override func viewWillAppear(animated: Bool) {
           // HowOftenWeekAnswer1EEradioButtonControl?.delegate = self
            HowOftenWeekAnswer1EEradioButtonControl?.shouldLetDeSelect = true
           // HowOftenWeekAnswer1EEradioButtonControl.setButtonsArray([ Button0, Button1,  Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9])

            
          //  HowOftenNightAnswer1EEradioButtonControl?.delegate = self
            HowOftenNightAnswer1EEradioButtonControl?.shouldLetDeSelect = true
         //   HowOftenNightAnswer1EEradioButtonControl.setButtonsArray([ Button01, Button11,  Button21, Button31, Button41, Button51, Button61, Button71, Button81, Button91])


            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            LoadColorScheme()
            
            //adding info to the arrays
            
            self.Section1.addObject("Section 1 ")
            
            self.Question1.addObject("Do I have problems?")
            
            
            self.HowOftenWeekQuestionForAnswer1EE.addObject("How often?")
            
            self.HowOftenWeekAnswer1EE.addObject("once a month or less")
            self.HowOftenWeekAnswer1EE.addObject("once a week")
            self.HowOftenWeekAnswer1EE.addObject("2 or 3 days a week")
            self.HowOftenWeekAnswer1EE.addObject(" 4 or 5 days a week")
            self.HowOftenWeekAnswer1EE.addObject("6 to 7 days a week")
            
            
            self.HowOftenNightAnswer1EE.addObject("1")
            self.HowOftenNightAnswer1EE.addObject("2")
            self.HowOftenNightAnswer1EE.addObject("3")
            self.HowOftenNightAnswer1EE.addObject("4")
            self.HowOftenNightAnswer1EE.addObject("5")
            self.HowOftenNightAnswer1EE.addObject("6 or more times")
            
            
            //these are values that need to be set to have the raido buttons to work
            
                                 // this is to make the row heights adjust automaticly to the need heights
            
          //  self.tableView.rowHeight = UITableViewAutomaticDimension
            self.tableView.rowHeight = 60.0

            self.tableView.reloadData()

        }
    
        override func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
        
        func LoadColorScheme () {
            var mainColor = UIColor(red: 27.0/255.0, green: 42.0/255.0, blue: 78.0/255.0, alpha: 1.0)
            var  accentColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
            var textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
            
            self.tableView.backgroundColor = mainColor
            self.view.backgroundColor = mainColor
            
            SectionCellColor = accentColor
            sectionTextColor = textColor
            MainQuestionCellColor = mainColor
            MainQuestionTextColor = textColor
            MainAnswerCellColor = mainColor
            SecondaryQuestionCellColor = mainColor
            SecondaryQuestionTextColor = textColor
            SecondaryAnswerCellColor = mainColor
            SecondaryAnswerTextColor = textColor
            var r: CGFloat = 0
            var g: CGFloat = 0
            var b: CGFloat = 0
            var a: CGFloat = 0
            accentColor.getRed(&r, green: &g, blue: &b, alpha: &a)
            MainAnswerTextColor = UIColor(red: min(r+0.1, 1.0), green: min(g+0.1, 1.0), blue: min(b+0.1, 1.0), alpha: a)
        }
        
        // this is how many section in will be added to tableview
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return EnvironmentExteriorSection
        }
        
        //this founds out how many cells will be in each section
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0{
                return self.Section1.count
            }
            else if  section == 1{
                return self.HowOftenWeekAnswer1EE.count
            }
            else if section == 2{
                return self.HowOftenWeekQuestionForAnswer1EE.count
            }
            else{
                return self.HowOftenNightAnswer1EE.count
                   }
    }
    
        //this function puts in cells and populates them with the info from the arrays
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            
            
            if indexPath.section == 0 {
                let cell = self.tableView.dequeueReusableCellWithIdentifier("Section", forIndexPath: indexPath) as! SectionLabelCell
                cell.backgroundColor = SectionCellColor
                cell.SectionLabel.text = self.Section1.objectAtIndex(indexPath.row) as? String
                cell.SectionLabel.textColor = sectionTextColor
                return cell
            }
                
                
            else if  indexPath.section == 1{
                
                let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
  
                return OriginalOneAnswerCell(
                    cell,
                    cellbackground: SecondaryAnswerCellColor,
                    celltextcolor: SecondaryAnswerTextColor,
                    RadioController: HowOftenWeekAnswer1EEradioButtonControl,
                    AnwserArray: HowOftenWeekAnswer1EE,
                    index: indexPath.row,
                    NSInt: defaults.integerForKey("Answer1EnvironmentExteriorAnswer1"),
                    NSBool: defaults.boolForKey("HowOftenWeekAnswer1EEradioButtonControl"))
            }
                
                
                
                
            else if indexPath.section == 2 {
                let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
                cell.backgroundColor = SecondaryQuestionCellColor
                cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer1EE.objectAtIndex(indexPath.row) as? String
                cell.QuestionLabel.textColor = SecondaryQuestionTextColor
                return cell
            }
                
            else{
                
                let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
                
                return OriginalOneAnswerCell(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer1EEradioButtonControl, AnwserArray: HowOftenNightAnswer1EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer1EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer1EEradioButtonControl"))

                }
            }
    
    
        //this makes it so the radio butons states can be changed by the cell when pushed
        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
            if let cell = self.tableView.cellForRowAtIndexPath(indexPath) as? AnswerOneCell {
                print("before anythiing why is this happening?")
                
                if cell.selected == true{
                    print("why is this happening?")
                    if indexPath.section == 1{
                        HowOftenWeekAnswer1EEradioButtonControl.pressed(cell.RadioButton)
                        defaults.setInteger(indexPath.row, forKey: "Answer1EnvironmentExteriorAnswer1")
                        defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer1EEradioButtonControl")
                    }
                    if indexPath.section == 3{
                        HowOftenNightAnswer1EEradioButtonControl.pressed(cell.RadioButton)
                        defaults.setInteger(indexPath.row, forKey: "Answer1EnvironmentExteriorAnswer2")
                        defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer1EEradioButtonControl")
                    }
                   
                }
            }
            }
            



}