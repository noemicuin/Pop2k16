//
//  AboutViewController.swift
//  Pop2k16
//
//  Created by Noemi Cuin on 12/20/16.
//  Copyright © 2016 Noemi Cuin. All rights reserved.
//


import UIKit

class AboutViewController: UIViewController {

   @IBOutlet var ScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize.height=1000
        ScrollView.contentSize.width=0
        
        
    }
    
}
