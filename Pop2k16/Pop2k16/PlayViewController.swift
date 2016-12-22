//
//  PlayViewController.swift
//  Pop2k16
//
//  Created by Noemi Cuin on 12/20/16.
//  Copyright © 2016 Noemi Cuin. All rights reserved.
//


import UIKit

struct Question{
    
    var Question: String!
    var Answers: [String]
    var Answer: Int!
    
}

struct Scores {
    var score: Int!
}



class PlayViewController: UIViewController {
    
    @IBOutlet var options: [UIButton]!
    
    
    @IBOutlet var QLabel: UILabel!
    
   
    @IBOutlet var currentScoreLabel: UILabel!
    
    @IBOutlet var highestScoreLabel: UILabel!
    
    //used to display score
    var Score=0
    var HighScore=0
    
    
    //array of objects of questions
    var Questions = [Question]()
    
    var questionNumber = Int()
    
    var answerNumber = Int()
    
   
    
    
    //used to keep track of how many questions the user gets correct
    var correct=0;
    var button1PressedCount=0;
    var button2PressedCount=0;
    var button3PressedCount=0;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var HighScoreDefault = NSUserDefaults.standardUserDefaults()
        
        
        if(HighScoreDefault.valueForKey("HighScore") != nil)
        {
            HighScore = HighScoreDefault.valueForKey("HighScore") as! NSInteger!
            highestScoreLabel.text=NSString(format: "Highscore: %i", HighScore) as NSString as String
            
            
        }
        
        currentScoreLabel.text=""
        
        //create array of questions and answers to be displayed
        Questions =
            [
            //question1
            Question(Question: "This person left 5th Harmony...", Answers: ["Camila","Dinah","Lauren"],Answer: 0),
            //question2
            Question(Question: "Kimye's 2nd child is named _____", Answers: ["South","Blanket","Saint"], Answer:2),
            //question3
            Question(Question: "We lost this actress this year...", Answers: ["Chelsea Handler","Florence Henderson","Julianna Margulies"], Answer: 1),
            //question4
            Question(Question: "These two are a new tv duo", Answers: ["Mark Hamil & Alicia Keys","Rachael Ray & Tyga","Martha Stewart & Snoop Dogg"], Answer: 2),
            //question5
            Question(Question: "He released a new album titled 'Views'.", Answers: ["Drake","Frank Ocean","Ray J"], Answer: 0),
            //question6
            Question(Question: "A famous challenge where you stay still", Answers: ["Manequin Challenge","Frozen Challenge","Still Challenge"], Answer: 0),
            //question7
            Question(Question: "She recently joined 'The Voice'", Answers: ["Miley Cyrus","Gwen Stefani","Kelly Clarkson"], Answer: 0),
            //question8
            Question(Question: "Bruno Mars's new hit is titled _____", Answers: ["Star Magic","24K Magic","Pinkie Rings"], Answer: 1),
            //question9
            Question(Question: "His characters fight Dinosaurs and guard galaxies", Answers: ["Chris Pine","Chris Hemsworth","Chris Pratt"], Answer: 2),
            //question10
            Question(Question: "2016 brought this reboot: ", Answers: ["Scooby Doo","Ghostbusters","The Sound of Music"], Answer: 1)]
        
        pickQuestion()
        
        

        
        //save the data
        //NSUserDefaults.standardUserDefaults().setObject(scoresArray,forKey:"allScores")
        //NSUserDefaults.standardUserDefaults().synchronize()
        
        

        
        
    }
    
    
    func pickQuestion()
    {
        if (Questions.count > 0)
        {
            questionNumber = random()%Questions.count
            
            QLabel.text=Questions[questionNumber].Question
            
            answerNumber=Questions[questionNumber].Answer
            
            for i in 0..<options.count
            {
                options[i].setTitle(Questions[questionNumber].Answers[i], forState: UIControlState.Normal)
                                
            }
            
            currentScoreLabel.text=NSString(format: "Correct: %i", correct) as String
            button1PressedCount=0;
            button2PressedCount=0;
            button3PressedCount=0;
            
        }
        
        else{
            
            currentScoreLabel.text=NSString(format: "Done! Final Score: %i", correct) as String
            
            //if new high score
            if(correct>HighScore)
            {
                HighScore=correct
                highestScoreLabel.text=NSString(format: "High Score: %i", HighScore) as String
                
                var HighScoreDefault = NSUserDefaults.standardUserDefaults()
                HighScoreDefault.setValue(HighScore, forKey: "HighScore")
                HighScoreDefault.synchronize()
                
                
            }
          
            print(correct)
          
          /*  scoresArray.append(correct)
            print("these are the scores: \(allScores)")*/
          
            NSLog("Done!")
        }
        
    }//end of pickQuestion()
    
    
    @IBAction func Btn1(sender: AnyObject) {
        
        button1PressedCount++
        
        //if correct answer
        if (answerNumber==0)
        {
            if(button1PressedCount==1 && button2PressedCount==0 && button3PressedCount==0)
            {
                correct++;
                button1PressedCount=0;
            }
            
            Questions.removeAtIndex(questionNumber)
            pickQuestion()
        }
        
        else
        {
           
            
            
        }
        
    }
    
    
    @IBAction func Btn2(sender: AnyObject) {
        
        button2PressedCount++;
        
        //if correct answer
        if (answerNumber==1)
        {
            if(button2PressedCount==1 && button1PressedCount==0 && button3PressedCount==0)
            {
                correct++;
                button2PressedCount=0;
            }
            
            Questions.removeAtIndex(questionNumber)
            pickQuestion()
        }
            
        else
        {
            
        }
    }
    
    @IBAction func Btn3(sender: AnyObject) {
        
        button3PressedCount++;
        
        //if correct answer
        if (answerNumber==2)
        {
            if(button3PressedCount==1 && button1PressedCount==0 && button2PressedCount==0)
            {
                correct++;
                button3PressedCount=0;
            }
            
            Questions.removeAtIndex(questionNumber)
            pickQuestion()
        }
            
        else
        {
            //responseLabel.text=String(Questions[questionNumber].Answers[answerNumber])
            
        }
    }
    
    
}
