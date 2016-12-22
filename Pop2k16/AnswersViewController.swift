//
//  AnswersViewController.swift
//  Pop2k16
//
//  Created by Noemi Cuin on 12/21/16.
//  Copyright © 2016 Noemi Cuin. All rights reserved.
//

import UIKit

class AnswersViewController: UIViewController, UITableViewDataSource {
    
    let qAndA=[("This person left 5th Harmony..."),
        ("Camila"),
        
        ("Kimye's 2nd child is named _____"),
        ("Saint"),
        
        ("We lost this actress this year..."),
        ("Florence Henderson"),
        
        ("These two are a new tv duo"),
        ("Martha Stewart & Snoop Dogg"),
        
        ("He released a new album titled 'Views'."),
        ("Drake"),
        
        ("A famous challenge where you stay still"),
        ("Manequin Challenge"),
        
        ("She recently joined 'The Voice'"),
        ("Miley Cyrus"),
        
        ("Bruno Mars's new hit is titled _____"),
        ("24K Magic"),
        
        ("His characters fight Dinosaurs and guard galaxies"),
        ("Chris Pratt"),
        
        ("2016 brought this reboot: "),
        ("Ghostbusters")
    ]
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (qAndA.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let (cell) = UITableViewCell()
        
        
        if((indexPath.row%2)==0)
        {
          let (question) = qAndA[indexPath.row]
          cell.textLabel?.font = UIFont(name:"Futura", size:12)
          cell.textLabel?.text="Q: "+question
          
            
        }
        
        else
        {
            let (answer) = qAndA[indexPath.row]
            cell.textLabel?.font = UIFont(name:"Futura", size:12)
            cell.textLabel?.text="-"+answer
        }
       
        
        
        return cell
    }
    
    
}
