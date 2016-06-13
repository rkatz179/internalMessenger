//
//  User2ViewController.swift
//  InternalMessenger
//
//  Created by Rachel on 6/9/16.
//  Copyright © 2016 Rachel Katz. All rights reserved.
//

import UIKit

protocol UserDelegate {
    func displayMessage(message: String?)
}


class User2ViewController: UIViewController, UserDelegate {
    var receivedMessage: String?
    var delegate: UserDelegate?
    @IBOutlet weak var displayedMessage: UILabel!
    @IBOutlet weak var messageField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func viewWillAppear(animated: Bool) {
        self.displayedMessage.text = receivedMessage
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func displayMessage(message: String?){
        self.receivedMessage = message
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = self
        print("I'm In User2ViewController")
    }

    @IBAction func sendButtonPressed(sender: UIButton) {
        
        delegate?.displayMessage(self.messageField.text)
        print("pressing button")
        
    }
}

