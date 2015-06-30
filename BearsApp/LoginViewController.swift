//
//  LoginViewController.swift
//  BearsApp
//
//  Created by Imee Cuison on 6/25/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    @IBOutlet weak var usernameTxt: UITextField!
   
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    
    @IBOutlet weak var loginBtn: UIButton!
    
    
    @IBOutlet weak var signupBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }

    
   
    
    @IBAction func loginBtn_click(sender: AnyObject) {
        
        
        PFUser.logInWithUsernameInBackground(usernameTxt.text, password: passwordTxt.text){
            (user:PFUser?, error:NSError?) -> Void in
            
            
            if (error != nil)
            {
                println("can't login")
            }else {
                println("you are logged in")
                
                var installation:PFInstallation = PFInstallation.currentInstallation()
                installation["user"] = PFUser.currentUser()
                installation.saveInBackgroundWithBlock({
                    (success:Bool, error:NSError?) -> Void in
                })
                
                
                self.performSegueWithIdentifier("goToUsersVC", sender: self)
            }
            
        }
  
        
        
        
        
        
        
    }
    
    
}
