//
//  User1ViewController.swift
//  InternalMessenger
//
//  Created by Rachel on 6/9/16.
//  Copyright © 2016 Rachel Katz. All rights reserved.
//

import UIKit



class User1ViewController: UIViewController, UserDelegate {
    var receivedMessage: String?
    var delegate = UserDelegate?()

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
    
    @IBAction func sendButtonTapped(sender: UIButton) {
        
        delegate?.displayMessage(self.messageField.text)
    }
    
    
    func displayMessage(message: String?){
        self.receivedMessage = message
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = self
    }


}
