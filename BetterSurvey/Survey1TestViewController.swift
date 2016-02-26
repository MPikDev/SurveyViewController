//
//  Survey3ViewController.swift
//  BetterSurvey
//
//  Created by Mark Pikulik on 2/18/16.
//  Copyright © 2016 Mark Pikulik. All rights reserved.
//

import UIKit

class Survey1TestViewController: UIViewController , SSRadioButtonControllerDelegate {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    
    //the tableview that will hold the cells
    @IBOutlet var tableView: UITableView!
    
    // @IBOutlet var SkipSurveyOutlet: UIButton!
    // @IBAction func BackAction(sender: AnyObject) {
    // self.performSegueWithIdentifier("Main", sender: self)
    
    //   }
    
    
    
    @IBOutlet var ContinueOutlet: UIButton!
    
    @IBAction func ContinueAction(sender: AnyObject) {
        
        let warningFlag = defaults.boolForKey("Answer1EnvironmentExterior") || defaults.boolForKey("Answer2EnvironmentExterior") || defaults.boolForKey("Answer3EnvironmentExterior") || defaults.boolForKey("Answer4EnvironmentExterior") || defaults.boolForKey("Answer5EnvironmentExterior") || defaults.boolForKey("Answer6EnvironmentExterior")
        
        // create the alert
        let alert = UIAlertController(title: "Warning", message: "You can't continue without answering the questions.", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        
        
        if warningFlag && defaults.boolForKey("Answer7EnvironmentExterior"){
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        else if defaults.boolForKey("Answer7EnvironmentExterior") {
            //  self.performSegueWithIdentifier("Survey2", sender: self)
            
        }
        else if warningFlag {
            //   self.performSegueWithIdentifier("Survey2", sender: self)
            
        }
        else {
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
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



    //how many section there will be 6 answer has 38, 7 answer has 45
    
    var EnvironmentExteriorSection = 45
    //the arrays that the text for the cell are stored
    
    var Section1: NSMutableArray! = NSMutableArray()
    var Question1: NSMutableArray! = NSMutableArray()
    
    var Answer1EE: NSMutableArray! = NSMutableArray()
    var Answer2EE: NSMutableArray! = NSMutableArray()
    var Answer3EE: NSMutableArray! = NSMutableArray()
    var Answer4EE: NSMutableArray! = NSMutableArray()
    var Answer5EE: NSMutableArray! = NSMutableArray()
    var Answer6EE: NSMutableArray! = NSMutableArray()
    var Answer7EE: NSMutableArray! = NSMutableArray()
    
    
    var HowOftenWeekQuestionForAnswer1EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer1EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion1EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer1EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion1EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer1EE: NSMutableArray! = NSMutableArray()
    
    var HowOftenWeekQuestionForAnswer2EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer2EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion2EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer2EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion2EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer2EE: NSMutableArray! = NSMutableArray()
    
    var HowOftenWeekQuestionForAnswer3EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer3EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion3EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer3EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion3EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer3EE: NSMutableArray! = NSMutableArray()
    
    var HowOftenWeekQuestionForAnswer4EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer4EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion4EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer4EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion4EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer4EE: NSMutableArray! = NSMutableArray()
    
    var HowOftenWeekQuestionForAnswer5EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer5EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion5EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer5EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion5EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer5EE: NSMutableArray! = NSMutableArray()
    
    var HowOftenWeekQuestionForAnswer6EE: NSMutableArray! = NSMutableArray()
    var HowOftenWeekAnswer6EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightQuestion6EE: NSMutableArray! = NSMutableArray()
    var HowOftenNightAnswer6EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyQuestion6EE: NSMutableArray! = NSMutableArray()
    var HowSeverlyAnswer6EE: NSMutableArray! = NSMutableArray()
    
    //the number of empty (space) cells after a question for clarity
    var numberOfEmptyCells = 1
    
    
    //these are for the radio buttons to work
    
    var HowOftenWeekAnswer1EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer1EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer1EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    var HowOftenWeekAnswer2EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer2EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer2EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    var HowOftenWeekAnswer3EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer3EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer3EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    var HowOftenWeekAnswer4EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer4EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer4EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    var HowOftenWeekAnswer5EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer5EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer5EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    var HowOftenWeekAnswer6EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowOftenNightAnswer6EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    var HowSeverlyAnswer6EEradioButtonControl: SSRadioButtonsController! = SSRadioButtonsController()
    
    //flag that make the section with question disappear or appear
    
    var HideSecondaryQuestion1: Bool = false
    var HideSecondaryQuestion2: Bool = false
    var HideSecondaryQuestion3: Bool = false
    var HideSecondaryQuestion4: Bool = false
    var HideSecondaryQuestion5: Bool = false
    var HideSecondaryQuestion6: Bool = false
    var NoneQuestion7: Bool = false
    
    
    override func viewWillAppear(animated: Bool) {
        HowOftenWeekAnswer1EEradioButtonControl?.delegate = self
        HowOftenWeekAnswer1EEradioButtonControl?.shouldLetDeSelect = true
        HowOftenWeekAnswer1EEradioButtonControl.setButtonsArray([ Button0, Button1,  Button2, Button3, Button4])
        
        HowOftenNightAnswer1EEradioButtonControl?.delegate = self
        HowOftenNightAnswer1EEradioButtonControl?.shouldLetDeSelect = true
        HowSeverlyAnswer1EEradioButtonControl?.delegate = self
        HowSeverlyAnswer1EEradioButtonControl?.shouldLetDeSelect = true
        
        HowOftenWeekAnswer2EEradioButtonControl?.delegate = self
        HowOftenWeekAnswer2EEradioButtonControl?.shouldLetDeSelect = true
        HowOftenNightAnswer2EEradioButtonControl?.delegate = self
        HowOftenNightAnswer2EEradioButtonControl?.shouldLetDeSelect = true
        HowSeverlyAnswer2EEradioButtonControl?.delegate = self
        HowSeverlyAnswer2EEradioButtonControl?.shouldLetDeSelect = true
        
        HowOftenWeekAnswer3EEradioButtonControl?.delegate = self
        HowOftenWeekAnswer3EEradioButtonControl?.shouldLetDeSelect = true
        HowOftenNightAnswer3EEradioButtonControl?.delegate = self
        HowOftenNightAnswer3EEradioButtonControl?.shouldLetDeSelect = true
        HowSeverlyAnswer3EEradioButtonControl?.delegate = self
        HowSeverlyAnswer3EEradioButtonControl?.shouldLetDeSelect = true
        
        HowOftenWeekAnswer4EEradioButtonControl?.delegate = self
        HowOftenWeekAnswer4EEradioButtonControl?.shouldLetDeSelect = true
        HowOftenNightAnswer4EEradioButtonControl?.delegate = self
        HowOftenNightAnswer4EEradioButtonControl?.shouldLetDeSelect = true
        HowSeverlyAnswer4EEradioButtonControl?.delegate = self
        HowSeverlyAnswer4EEradioButtonControl?.shouldLetDeSelect = true
        
        HowOftenWeekAnswer5EEradioButtonControl?.delegate = self
        HowOftenWeekAnswer5EEradioButtonControl?.shouldLetDeSelect = true
        HowOftenNightAnswer5EEradioButtonControl?.delegate = self
        HowOftenNightAnswer5EEradioButtonControl?.shouldLetDeSelect = true
        HowSeverlyAnswer5EEradioButtonControl?.delegate = self
        HowSeverlyAnswer5EEradioButtonControl?.shouldLetDeSelect = true

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadColorScheme()
        
        //adding info to the arrays
        
        self.Section1.addObject("Section 1 Exterior Environment")
        
        self.Question1.addObject("Do any of the following noises from outside your home disturb your sleep or wake you up?")
        
        self.Answer1EE.addObject("Loud neighbors")
        self.Answer2EE.addObject("Traffic")
        self.Answer3EE.addObject("Barking dogs or other animals")
        self.Answer4EE.addObject("Emergency vehicles")
        self.Answer5EE.addObject("Proximity to fire department/police department, proximity to school or factory with whistles or sirens")
        self.Answer6EE.addObject("Other exterior loud noises")
        self.Answer7EE.addObject("None")
        
        self.HowOftenWeekQuestionForAnswer1EE.addObject("How often?")
        
        self.HowOftenWeekAnswer1EE.addObject("once a month or less")
        self.HowOftenWeekAnswer1EE.addObject("once a week")
        self.HowOftenWeekAnswer1EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer1EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer1EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion1EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer1EE.addObject("1")
        self.HowOftenNightAnswer1EE.addObject("2")
        self.HowOftenNightAnswer1EE.addObject("3")
        self.HowOftenNightAnswer1EE.addObject("4")
        self.HowOftenNightAnswer1EE.addObject("5")
        self.HowOftenNightAnswer1EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion1EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer1EE.addObject("1 super hard ")
        self.HowSeverlyAnswer1EE.addObject("2")
        self.HowSeverlyAnswer1EE.addObject("3")
        self.HowSeverlyAnswer1EE.addObject("4")
        self.HowSeverlyAnswer1EE.addObject("5")
        self.HowSeverlyAnswer1EE.addObject("6")
        self.HowSeverlyAnswer1EE.addObject("7 tugh luch ")

        
        // for answer two the addtional questions
        self.HowOftenWeekQuestionForAnswer2EE.addObject("How often?")
        
        self.HowOftenWeekAnswer2EE.addObject("once a month or less")
        self.HowOftenWeekAnswer2EE.addObject("once a week")
        self.HowOftenWeekAnswer2EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer2EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer2EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion2EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer2EE.addObject("1")
        self.HowOftenNightAnswer2EE.addObject("2")
        self.HowOftenNightAnswer2EE.addObject("3")
        self.HowOftenNightAnswer2EE.addObject("4")
        self.HowOftenNightAnswer2EE.addObject("5")
        self.HowOftenNightAnswer2EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion2EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer2EE.addObject("1")
        self.HowSeverlyAnswer2EE.addObject("2")
        self.HowSeverlyAnswer2EE.addObject("3")
        self.HowSeverlyAnswer2EE.addObject("4")
        self.HowSeverlyAnswer2EE.addObject("5")
        self.HowSeverlyAnswer2EE.addObject("6")
        self.HowSeverlyAnswer2EE.addObject("7")
        self.HowSeverlyAnswer2EE.addObject("8")
        self.HowSeverlyAnswer2EE.addObject("9")
        self.HowSeverlyAnswer2EE.addObject("10")
        
        // for answer three the addtional questions
        self.HowOftenWeekQuestionForAnswer3EE.addObject("How often?")
        
        self.HowOftenWeekAnswer3EE.addObject("once a month or less")
        self.HowOftenWeekAnswer3EE.addObject("once a week")
        self.HowOftenWeekAnswer3EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer3EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer3EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion3EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer3EE.addObject("1")
        self.HowOftenNightAnswer3EE.addObject("2")
        self.HowOftenNightAnswer3EE.addObject("3")
        self.HowOftenNightAnswer3EE.addObject("4")
        self.HowOftenNightAnswer3EE.addObject("5")
        self.HowOftenNightAnswer3EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion3EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer3EE.addObject("1")
        self.HowSeverlyAnswer3EE.addObject("2")
        self.HowSeverlyAnswer3EE.addObject("3")
        self.HowSeverlyAnswer3EE.addObject("4")
        self.HowSeverlyAnswer3EE.addObject("5")
        self.HowSeverlyAnswer3EE.addObject("6")
        self.HowSeverlyAnswer3EE.addObject("7")
        self.HowSeverlyAnswer3EE.addObject("8")
        self.HowSeverlyAnswer3EE.addObject("9")
        self.HowSeverlyAnswer3EE.addObject("10")
        
        // for answer four the addtional questions
        self.HowOftenWeekQuestionForAnswer4EE.addObject("How often?")
        
        self.HowOftenWeekAnswer4EE.addObject("once a month or less")
        self.HowOftenWeekAnswer4EE.addObject("once a week")
        self.HowOftenWeekAnswer4EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer4EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer4EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion4EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer4EE.addObject("1")
        self.HowOftenNightAnswer4EE.addObject("2")
        self.HowOftenNightAnswer4EE.addObject("3")
        self.HowOftenNightAnswer4EE.addObject("4")
        self.HowOftenNightAnswer4EE.addObject("5")
        self.HowOftenNightAnswer4EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion4EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer4EE.addObject("1")
        self.HowSeverlyAnswer4EE.addObject("2")
        self.HowSeverlyAnswer4EE.addObject("3")
        self.HowSeverlyAnswer4EE.addObject("4")
        self.HowSeverlyAnswer4EE.addObject("5")
        self.HowSeverlyAnswer4EE.addObject("6")
        self.HowSeverlyAnswer4EE.addObject("7")
        self.HowSeverlyAnswer4EE.addObject("8")
        self.HowSeverlyAnswer4EE.addObject("9")
        self.HowSeverlyAnswer4EE.addObject("10")
        
        // for answer five the addtional questions
        self.HowOftenWeekQuestionForAnswer5EE.addObject("How often?")
        
        self.HowOftenWeekAnswer5EE.addObject("once a month or less")
        self.HowOftenWeekAnswer5EE.addObject("once a week")
        self.HowOftenWeekAnswer5EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer5EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer5EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion5EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer5EE.addObject("1")
        self.HowOftenNightAnswer5EE.addObject("2")
        self.HowOftenNightAnswer5EE.addObject("3")
        self.HowOftenNightAnswer5EE.addObject("4")
        self.HowOftenNightAnswer5EE.addObject("5")
        self.HowOftenNightAnswer5EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion5EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer5EE.addObject("1")
        self.HowSeverlyAnswer5EE.addObject("2")
        self.HowSeverlyAnswer5EE.addObject("3")
        self.HowSeverlyAnswer5EE.addObject("4")
        self.HowSeverlyAnswer5EE.addObject("5")
        self.HowSeverlyAnswer5EE.addObject("6")
        self.HowSeverlyAnswer5EE.addObject("7")
        self.HowSeverlyAnswer5EE.addObject("8")
        self.HowSeverlyAnswer5EE.addObject("9")
        self.HowSeverlyAnswer5EE.addObject("10")
        
        // for answer six the addtional questions
        self.HowOftenWeekQuestionForAnswer6EE.addObject("How often?")
        
        self.HowOftenWeekAnswer6EE.addObject("once a month or less")
        self.HowOftenWeekAnswer6EE.addObject("once a week")
        self.HowOftenWeekAnswer6EE.addObject("2 or 3 days a week")
        self.HowOftenWeekAnswer6EE.addObject(" 4 or 5 days a week")
        self.HowOftenWeekAnswer6EE.addObject("6 to 7 days a week")
        
        self.HowOftenNightQuestion6EE.addObject("How many times does it happen during that sleep time?")
        
        self.HowOftenNightAnswer6EE.addObject("1")
        self.HowOftenNightAnswer6EE.addObject("2")
        self.HowOftenNightAnswer6EE.addObject("3")
        self.HowOftenNightAnswer6EE.addObject("4")
        self.HowOftenNightAnswer6EE.addObject("5")
        self.HowOftenNightAnswer6EE.addObject("6 or more times")
        
        self.HowSeverlyQuestion6EE.addObject("On a scale of 1 to 10 how severly does this impact your overall sleep health?")
        
        self.HowSeverlyAnswer6EE.addObject("1")
        self.HowSeverlyAnswer6EE.addObject("2")
        self.HowSeverlyAnswer6EE.addObject("3")
        self.HowSeverlyAnswer6EE.addObject("4")
        self.HowSeverlyAnswer6EE.addObject("5")
        self.HowSeverlyAnswer6EE.addObject("6")
        self.HowSeverlyAnswer6EE.addObject("7")
        self.HowSeverlyAnswer6EE.addObject("8")
        self.HowSeverlyAnswer6EE.addObject("9")
        self.HowSeverlyAnswer6EE.addObject("10")
        
        
        //these are values that need to be set to have the raido buttons to work
        

        
        // this is to make the row heights adjust automaticly to the need heights
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44.0
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    func LoadColorScheme () {
        var mainColor = UIColor(red: 27.0/255.0, green: 42.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        var  accentColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        var textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        //SkipSurveyOutlet.setTitleColor(defaults.colorForKey("textColor"), forState: UIControlState.Normal)
        ContinueOutlet.setTitleColor(textColor, forState: UIControlState.Normal)
        
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
            return self.Question1.count
        }
        else if section == 2{
            return self.Answer1EE.count
        }
        else if  section == 3{
            return self.HowOftenWeekQuestionForAnswer1EE.count
        }
        else if  section == 4{
            return self.HowOftenWeekAnswer1EE.count
        }
        else if  section == 5{
            return self.HowOftenNightQuestion1EE.count
        }
        else if  section == 6{
            return self.HowOftenNightAnswer1EE.count
        }
        else if  section == 7{
            return self.HowSeverlyQuestion1EE.count
        }
        else if  section == 8{
            return self.HowSeverlyAnswer1EE.count
        }
        else if section == 9{
            return self.Answer2EE.count
        }
        else if  section == 10{
            return self.HowOftenWeekQuestionForAnswer2EE.count
        }
        else if  section == 11{
            return self.HowOftenWeekAnswer2EE.count
        }
        else if  section == 12{
            return self.HowOftenNightQuestion2EE.count
        }
        else if  section == 13{
            return self.HowOftenNightAnswer2EE.count
        }
        else if  section == 14{
            return self.HowSeverlyQuestion2EE.count
        }
        else if  section == 15{
            return self.HowSeverlyAnswer2EE.count
        }
        else if section == 16{
            return self.Answer3EE.count
        }
        else if  section == 17{
            return self.HowOftenWeekQuestionForAnswer3EE.count
        }
        else if  section == 18{
            return self.HowOftenWeekAnswer3EE.count
        }
        else if  section == 19{
            return self.HowOftenNightQuestion3EE.count
        }
        else if  section == 20{
            return self.HowOftenNightAnswer3EE.count
        }
        else if  section == 21{
            return self.HowSeverlyQuestion3EE.count
        }
        else if  section == 22{
            return self.HowSeverlyAnswer3EE.count
        }
        else if section == 23{
            return self.Answer4EE.count
        }
        else if  section == 24{
            return self.HowOftenWeekQuestionForAnswer4EE.count
        }
        else if  section == 25{
            return self.HowOftenWeekAnswer4EE.count
        }
        else if  section == 26{
            return self.HowOftenNightQuestion4EE.count
        }
        else if  section == 27{
            return self.HowOftenNightAnswer4EE.count
        }
        else if  section == 28{
            return self.HowSeverlyQuestion4EE.count
        }
        else if  section == 29{
            return self.HowSeverlyAnswer4EE.count
        }
        else if section == 30{
            return self.Answer5EE.count
        }
        else if  section == 31{
            return self.HowOftenWeekQuestionForAnswer5EE.count
        }
        else if  section == 32{
            return self.HowOftenWeekAnswer5EE.count
        }
        else if  section == 33{
            return self.HowOftenNightQuestion5EE.count
        }
        else if  section == 34{
            return self.HowOftenNightAnswer5EE.count
        }
        else if  section == 35{
            return self.HowSeverlyQuestion5EE.count
        }
        else if  section == 36{
            return self.HowSeverlyAnswer5EE.count
        }
        else if section == 37{
            return self.Answer6EE.count
        }
        else if  section == 38{
            return self.HowOftenWeekQuestionForAnswer6EE.count
        }
        else if  section == 39{
            return self.HowOftenWeekAnswer6EE.count
        }
        else if  section == 40{
            return self.HowOftenNightQuestion6EE.count
        }
        else if  section == 41{
            return self.HowOftenNightAnswer6EE.count
        }
        else if  section == 42{
            return self.HowSeverlyQuestion6EE.count
        }
        else if  section == 43{
            return self.HowSeverlyAnswer6EE.count
        }
        else{
            return self.Answer7EE.count
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
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = MainQuestionCellColor
            cell.QuestionLabel.text = self.Question1.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = MainQuestionTextColor
            return cell
        }
            
        else if indexPath.section == 2 {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer1EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer1EnvironmentExterior")
            HideSecondaryQuestion1  =  defaults.boolForKey("Answer1EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
            
        else if  indexPath.section == 3{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer1EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
            
        else if  indexPath.section == 4{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return Test2OneAnswerCellCreator(
                cell,
                cellbackground: SecondaryAnswerCellColor,
                celltextcolor: SecondaryAnswerTextColor,
                RadioController: HowOftenWeekAnswer1EEradioButtonControl,
                AnwserArray: HowOftenWeekAnswer1EE,
                index: indexPath.row,
                NSInt: defaults.integerForKey("Answer1EnvironmentExteriorAnswer1"),
                NSBool: defaults.boolForKey("HowOftenWeekAnswer1EEradioButtonControl"))
            
        }
            
        else if  indexPath.section == 5{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion1EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 6{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer1EEradioButtonControl, AnwserArray: HowOftenNightAnswer1EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer1EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer1EEradioButtonControl"))
        }
        else if  indexPath.section == 7{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion1EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if indexPath.section == 8{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer1EEradioButtonControl, AnwserArray: HowSeverlyAnswer1EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer1EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer1EEradioButtonControl"))
        }
        else if indexPath.section == 9 {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer2EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer2EnvironmentExterior")
            HideSecondaryQuestion2  =  defaults.boolForKey("Answer2EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
            
        else if  indexPath.section == 10{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer2EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
            
        else if  indexPath.section == 11{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenWeekAnswer2EEradioButtonControl, AnwserArray: HowOftenWeekAnswer2EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer2EnvironmentExteriorAnswer1"), NSBool: defaults.boolForKey("HowOftenWeekAnswer2EEradioButtonControl"))
        }
            
        else if  indexPath.section == 12{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion2EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 13{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer2EEradioButtonControl, AnwserArray: HowOftenNightAnswer2EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer2EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer2EEradioButtonControl"))
        }
        else if  indexPath.section == 14{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion2EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 15{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer2EEradioButtonControl, AnwserArray: HowSeverlyAnswer2EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer2EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer2EEradioButtonControl"))
        }
        else if indexPath.section == 16 {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer3EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer3EnvironmentExterior")
            HideSecondaryQuestion3  =  defaults.boolForKey("Answer3EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
        else if  indexPath.section == 17{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer3EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 18{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenWeekAnswer3EEradioButtonControl, AnwserArray: HowOftenWeekAnswer3EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer3EnvironmentExteriorAnswer1"), NSBool: defaults.boolForKey("HowOftenWeekAnswer3EEradioButtonControl"))
        }
        else if  indexPath.section == 19{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion3EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 20{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer3EEradioButtonControl, AnwserArray: HowOftenNightAnswer3EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer3EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer3EEradioButtonControl"))
        }
        else if  indexPath.section == 21{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion3EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 22{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer3EEradioButtonControl, AnwserArray: HowSeverlyAnswer3EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer3EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer3EEradioButtonControl"))
        }
        else if indexPath.section == 23 {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer4EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer4EnvironmentExterior")
            HideSecondaryQuestion4  =  defaults.boolForKey("Answer4EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
            
        else if  indexPath.section == 24{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer4EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
            
        else if  indexPath.section == 25{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenWeekAnswer4EEradioButtonControl, AnwserArray: HowOftenWeekAnswer4EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer4EnvironmentExteriorAnswer1"), NSBool: defaults.boolForKey("HowOftenWeekAnswer4EEradioButtonControl"))
        }
            
        else if  indexPath.section == 26{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion4EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 27{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer4EEradioButtonControl, AnwserArray: HowOftenNightAnswer4EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer4EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer4EEradioButtonControl"))
        }
        else if  indexPath.section == 28{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion4EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if indexPath.section == 29{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer4EEradioButtonControl, AnwserArray: HowSeverlyAnswer4EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer4EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer4EEradioButtonControl"))
        }
        else if indexPath.section == 30 {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer5EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer5EnvironmentExterior")
            HideSecondaryQuestion5  =  defaults.boolForKey("Answer5EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
            
        else if  indexPath.section == 31{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer5EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 32{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenWeekAnswer5EEradioButtonControl, AnwserArray: HowOftenWeekAnswer5EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer5EnvironmentExteriorAnswer1"), NSBool: defaults.boolForKey("HowOftenWeekAnswer5EEradioButtonControl"))
        }
            
        else if  indexPath.section == 33{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion5EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 34{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer5EEradioButtonControl, AnwserArray: HowOftenNightAnswer5EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer5EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer5EEradioButtonControl"))
        }
        else if  indexPath.section == 35{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion5EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 36{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer5EEradioButtonControl, AnwserArray: HowSeverlyAnswer5EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer5EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer5EEradioButtonControl"))
        }
        else if  indexPath.section == 37{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer6EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer6EnvironmentExterior")
            HideSecondaryQuestion6  =  defaults.boolForKey("Answer6EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
            
        else if  indexPath.section == 38{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenWeekQuestionForAnswer6EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
            
        else if  indexPath.section == 39{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenWeekAnswer6EEradioButtonControl, AnwserArray: HowOftenWeekAnswer6EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer6EnvironmentExteriorAnswer1"), NSBool: defaults.boolForKey("HowOftenWeekAnswer6EEradioButtonControl"))
        }
            
        else if  indexPath.section == 40{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowOftenNightQuestion6EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 41{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowOftenNightAnswer6EEradioButtonControl, AnwserArray: HowOftenNightAnswer6EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer6EnvironmentExteriorAnswer2"), NSBool: defaults.boolForKey("HowOftenNightAnswer6EEradioButtonControl"))
        }
        else if  indexPath.section == 42{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("Question", forIndexPath: indexPath) as! QuestionCell
            cell.backgroundColor = SecondaryQuestionCellColor
            cell.QuestionLabel.text = self.HowSeverlyQuestion6EE.objectAtIndex(indexPath.row) as? String
            cell.QuestionLabel.textColor = SecondaryQuestionTextColor
            return cell
        }
        else if  indexPath.section == 43{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerOneCell", forIndexPath: indexPath) as! AnswerOneCell
            
            return OneAnswerCellCreator(cell, cellbackground: SecondaryAnswerCellColor, celltextcolor: SecondaryAnswerTextColor, RadioController: HowSeverlyAnswer6EEradioButtonControl, AnwserArray: HowSeverlyAnswer6EE, index: indexPath.row, NSInt: defaults.integerForKey("Answer6EnvironmentExteriorAnswer3"), NSBool: defaults.boolForKey("HowSeverlyAnswer6EEradioButtonControl"))
        }
        else  {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnswerMultiCell", forIndexPath: indexPath) as! AnswerMultiCell
            cell.backgroundColor = MainAnswerCellColor
            cell.AnswerMLabel.text = self.Answer7EE.objectAtIndex(indexPath.row) as? String
            cell.CheckBoxButton.tag = indexPath.row;
            cell.CheckBoxButton.isChecked =  defaults.boolForKey("Answer7EnvironmentExterior")
            cell.AnswerMLabel.textColor = MainAnswerTextColor
            cell.CheckBoxButton.tintColor = MainAnswerTextColor
            return cell
        }
        
    }
    
    //this makes it so the radio butons states can be changed by the cell when pushed
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let _ = self.tableView.cellForRowAtIndexPath(indexPath) as? AnswerMultiCell {
            if indexPath.section == 2 {
                HideSecondaryQuestion1 = !HideSecondaryQuestion1
                defaults.setBool(HideSecondaryQuestion1, forKey: "Answer1EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion1 == false {
                    defaults.setBool(HideSecondaryQuestion1, forKey: "HowOftenWeekAnswer1EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion1, forKey: "HowOftenNightAnswer1EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion1, forKey: "HowSeverlyAnswer1EEradioButtonControl")
                }
            }
            if indexPath.section == 9 {
                HideSecondaryQuestion2 = !HideSecondaryQuestion2
                defaults.setBool(HideSecondaryQuestion2, forKey: "Answer2EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion2 == false {
                    defaults.setBool(HideSecondaryQuestion2, forKey: "HowOftenWeekAnswer2EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion2, forKey: "HowOftenNightAnswer2EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion2, forKey: "HowSeverlyAnswer2EEradioButtonControl")
                }
            }
            if indexPath.section == 16{
                HideSecondaryQuestion3 = !HideSecondaryQuestion3
                defaults.setBool(HideSecondaryQuestion3, forKey: "Answer3EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion3 == false {
                    defaults.setBool(HideSecondaryQuestion3, forKey: "HowOftenWeekAnswer3EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion3, forKey: "HowOftenNightAnswer3EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion3, forKey: "HowSeverlyAnswer3EEradioButtonControl")
                }
            }
            if indexPath.section == 23{
                HideSecondaryQuestion4 = !HideSecondaryQuestion4
                defaults.setBool(HideSecondaryQuestion4, forKey: "Answer4EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion4 == false {
                    defaults.setBool(HideSecondaryQuestion4, forKey: "HowOftenWeekAnswer4EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion4, forKey: "HowOftenNightAnswer4EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion4, forKey: "HowSeverlyAnswer4EEradioButtonControl")
                }
            }
            if indexPath.section == 30{
                HideSecondaryQuestion5 = !HideSecondaryQuestion5
                defaults.setBool(HideSecondaryQuestion5, forKey: "Answer5EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion5 == false {
                    defaults.setBool(HideSecondaryQuestion5, forKey: "HowOftenWeekAnswer5EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion5, forKey: "HowOftenNightAnswer5EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion5, forKey: "HowSeverlyAnswer5EEradioButtonControl")
                }
            }
            if indexPath.section == 37{
                HideSecondaryQuestion6 = !HideSecondaryQuestion6
                defaults.setBool(HideSecondaryQuestion6, forKey: "Answer6EnvironmentExterior")
                self.defaults.setBool(false, forKey: "Answer7EnvironmentExterior")
                if HideSecondaryQuestion6 == false {
                    defaults.setBool(HideSecondaryQuestion6, forKey: "HowOftenWeekAnswer6EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion6, forKey: "HowOftenNightAnswer6EEradioButtonControl")
                    defaults.setBool(HideSecondaryQuestion6, forKey: "HowSeverlyAnswer6EEradioButtonControl")
                }
                
            }
            if indexPath.section == 44{
                if defaults.boolForKey("Answer1EnvironmentExterior") || defaults.boolForKey("Answer2EnvironmentExterior") || defaults.boolForKey("Answer3EnvironmentExterior") || defaults.boolForKey("Answer4EnvironmentExterior") || defaults.boolForKey("Answer5EnvironmentExterior") || defaults.boolForKey("Answer6EnvironmentExterior")
                {
                    let alert = UIAlertController(title: "Warning", message: "Selecting None will unselect your answers", preferredStyle: UIAlertControllerStyle.Alert)
                    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
                        switch action.style{
                        case .Default:
                            print("default")
                            self.HideSecondaryQuestion1 = false
                            self.HideSecondaryQuestion2 = false
                            self.HideSecondaryQuestion3 = false
                            self.HideSecondaryQuestion3 = false
                            self.HideSecondaryQuestion4 = false
                            self.HideSecondaryQuestion4 = false
                            self.HideSecondaryQuestion5 = false
                            self.HideSecondaryQuestion6 = false
                            self.defaults.setBool(false, forKey: "Answer1EnvironmentExterior")
                            self.defaults.setBool(false, forKey: "Answer2EnvironmentExterior")
                            self.defaults.setBool(false, forKey: "Answer3EnvironmentExterior")
                            self.defaults.setBool(false, forKey: "Answer4EnvironmentExterior")
                            self.defaults.setBool(false, forKey: "Answer5EnvironmentExterior")
                            self.defaults.setBool(false, forKey: "Answer6EnvironmentExterior")
                            self.NoneQuestion7 = true
                            self.defaults.setBool(true, forKey: "Answer7EnvironmentExterior")
                        case .Cancel:
                            print("cancel")
                            
                        case .Destructive:
                            print("destructive")
                        }
                        self.tableView.reloadData()
                        
                    }))
                    self.presentViewController(alert, animated: true, completion: nil)
                }
                else{
                    self.NoneQuestion7 = !NoneQuestion7
                    self.defaults.setBool(NoneQuestion7, forKey: "Answer7EnvironmentExterior")
                }
            }
            self.tableView.reloadData()
        }
        
        if let cell = self.tableView.cellForRowAtIndexPath(indexPath) as? AnswerOneCell {
            if cell.selected == true{
                if indexPath.section == 4{
                    HowOftenWeekAnswer1EEradioButtonControl.pressed(cell.RadioButton)
                  // HowOftenWeekAnswer1EEradioButtonControl.ButtonArrayReturn(indexPath.row)?.selected = true
                    defaults.setInteger(indexPath.row, forKey: "Answer1EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer1EEradioButtonControl")
                }
                if indexPath.section == 6{
                    HowOftenNightAnswer1EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer1EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer1EEradioButtonControl")
                }
                if indexPath.section == 8{
                    HowSeverlyAnswer1EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer1EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer1EEradioButtonControl")
                }
                if indexPath.section == 11{
                    HowOftenWeekAnswer2EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer2EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer2EEradioButtonControl")
                }
                if indexPath.section == 13{
                    HowOftenNightAnswer2EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer2EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer2EEradioButtonControl")
                }
                if indexPath.section == 15{
                    HowSeverlyAnswer2EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer2EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer2EEradioButtonControl")
                }
                if indexPath.section == 18{
                    HowOftenWeekAnswer3EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer3EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer3EEradioButtonControl")
                }
                if indexPath.section == 20{
                    HowOftenNightAnswer3EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer3EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer3EEradioButtonControl")
                }
                if indexPath.section == 22{
                    HowSeverlyAnswer3EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer3EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer3EEradioButtonControl")
                }
                if indexPath.section == 25{
                    HowOftenWeekAnswer4EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer4EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer4EEradioButtonControl")
                }
                if indexPath.section == 27{
                    HowOftenNightAnswer4EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer4EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer4EEradioButtonControl")
                }
                if indexPath.section == 29{
                    HowSeverlyAnswer4EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer4EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer4EEradioButtonControl")
                }
                if indexPath.section == 32{
                    HowOftenWeekAnswer5EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer5EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer5EEradioButtonControl")
                }
                if indexPath.section == 34{
                    HowOftenNightAnswer5EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer5EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer5EEradioButtonControl")
                }
                if indexPath.section == 36{
                    HowSeverlyAnswer5EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer5EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer5EEradioButtonControl")
                }
                if indexPath.section == 39{
                    HowOftenWeekAnswer6EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer6EnvironmentExteriorAnswer1")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenWeekAnswer6EEradioButtonControl")
                }
                if indexPath.section == 41{
                    HowOftenNightAnswer6EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer6EnvironmentExteriorAnswer2")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowOftenNightAnswer6EEradioButtonControl")
                }
                if indexPath.section == 43{
                    HowSeverlyAnswer6EEradioButtonControl.pressed(cell.RadioButton)
                    defaults.setInteger(indexPath.row, forKey: "Answer6EnvironmentExteriorAnswer3")
                    defaults.setBool(cell.RadioButton.selected, forKey: "HowSeverlyAnswer6EEradioButtonControl")
                }

            }
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if HideSecondaryQuestion1 == false{
            if indexPath.section == 3 && HideSecondaryQuestion1 == false{
                return 0.0
            }
            if indexPath.section == 4 && HideSecondaryQuestion1 == false {
                return 0.0
            }
            if indexPath.section == 5 && HideSecondaryQuestion1 == false {
                return 0.0
            }
            if indexPath.section == 6 && HideSecondaryQuestion1 == false{
                return 0.0
            }
            if indexPath.section == 7 && HideSecondaryQuestion1 == false {
                return 0.0
            }
            if indexPath.section == 8 && HideSecondaryQuestion1 == false {
                return 0.0
            }
        }
        if HideSecondaryQuestion2 == false{
            if indexPath.section == 10 && HideSecondaryQuestion2 == false{
                return 0.0
            }
            if indexPath.section == 11 && HideSecondaryQuestion2 == false {
                return 0.0
            }
            if indexPath.section == 12 && HideSecondaryQuestion2 == false {
                return 0.0
            }
            if indexPath.section == 13 && HideSecondaryQuestion2 == false{
                return 0.0
            }
            if indexPath.section == 14 && HideSecondaryQuestion2 == false {
                return 0.0
            }
            if indexPath.section == 15 && HideSecondaryQuestion2 == false {
                return 0.0
            }
        }
        if HideSecondaryQuestion3 == false{
            if indexPath.section == 17 && HideSecondaryQuestion3 == false{
                return 0.0
            }
            if indexPath.section == 18 && HideSecondaryQuestion3 == false {
                return 0.0
            }
            if indexPath.section == 19 && HideSecondaryQuestion3 == false {
                return 0.0
            }
            if indexPath.section == 20 && HideSecondaryQuestion3 == false{
                return 0.0
            }
            if indexPath.section == 21 && HideSecondaryQuestion3 == false {
                return 0.0
            }
            if indexPath.section == 22 && HideSecondaryQuestion3 == false {
                return 0.0
            }
        }
        if HideSecondaryQuestion4 == false{
            if indexPath.section == 24 && HideSecondaryQuestion4 == false{
                return 0.0
            }
            if indexPath.section == 25 && HideSecondaryQuestion4 == false {
                return 0.0
            }
            if indexPath.section == 26 && HideSecondaryQuestion4 == false {
                return 0.0
            }
            if indexPath.section == 27 && HideSecondaryQuestion4 == false{
                return 0.0
            }
            if indexPath.section == 28 && HideSecondaryQuestion4 == false {
                return 0.0
            }
            if indexPath.section == 29 && HideSecondaryQuestion4 == false {
                return 0.0
            }
        }
        if HideSecondaryQuestion5 == false{
            if indexPath.section == 31 && HideSecondaryQuestion5 == false{
                return 0.0
            }
            if indexPath.section == 32 && HideSecondaryQuestion5 == false {
                return 0.0
            }
            if indexPath.section == 33 && HideSecondaryQuestion5 == false {
                return 0.0
            }
            if indexPath.section == 34 && HideSecondaryQuestion5 == false{
                return 0.0
            }
            if indexPath.section == 35 && HideSecondaryQuestion5 == false {
                return 0.0
            }
            if indexPath.section == 36 && HideSecondaryQuestion5 == false {
                return 0.0
            }
        }
        if HideSecondaryQuestion6 == false{
            if indexPath.section == 38 && HideSecondaryQuestion6 == false{
                return 0.0
            }
            if indexPath.section == 39 && HideSecondaryQuestion6 == false {
                return 0.0
            }
            if indexPath.section == 40 && HideSecondaryQuestion6 == false {
                return 0.0
            }
            if indexPath.section == 41 && HideSecondaryQuestion6 == false{
                return 0.0
            }
            if indexPath.section == 42 && HideSecondaryQuestion6 == false {
                return 0.0
            }
            if indexPath.section == 43 && HideSecondaryQuestion6 == false {
                return 0.0
            }
        }
        return UITableViewAutomaticDimension
    }
}


