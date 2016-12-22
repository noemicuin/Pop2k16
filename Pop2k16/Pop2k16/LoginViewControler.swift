//
//  LoginViewControler.swift
//  Pop2k16
//
//  Created by Noemi Cuin on 12/20/16.
//  Copyright © 2016 Noemi Cuin. All rights reserved.
//

import UIKit

class LoginViewControler: UIViewController {

    
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginButtonTapped(sender: AnyObject) {
        
        
        let userName=usernameTextfield.text
        let userPassword=passwordTextfield.text
        
        
        if(userName=="user" && userPassword=="123")
        {
            
            performSegueWithIdentifier("afterLogin", sender: self)
            
        }
        
        else{
            
        }
        
        
        
        
    }
    
  }
