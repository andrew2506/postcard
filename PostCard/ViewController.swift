//
//  ViewController.swift
//  PostCard
//
//  Created by Andrew M on 9/12/14.
//  Copyright (c) 2014 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    

    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func SendEmailButtonPressed(sender: UIButton)
    {
        // Code will evaluate when we press the button
        //adding a comment here to test git
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        
        
    }
}

