//
//  ViewController.swift
//  Postcard
//
//  Created by Arun Bernard on 10/28/14.
//  Copyright (c) 2014 Bitfountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var receiverLabel: UILabel!
    
    @IBOutlet weak var receiverText: UITextField!
    @IBOutlet weak var messageText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //when sendMessage Button is pressed:
    @IBAction func sendMessagePressed(sender: UIButton) {
        
        //Assign the text from text box to label:
        messageLabel.text = messageText.text
        receiverLabel.text = receiverText.text
        
        //Now remove the added text:
        messageText.text = nil
        receiverText.text = nil
        
        //Unhide the labels:
        messageLabel.hidden = false
        receiverLabel.hidden = false
        
        //Change the text colors just for fun:
        receiverLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        
        //Highlight by changing the color of the button that it is pressed:
        //sender.backgroundColor = UIColor.blueColor()
       
        //Closing the key board:
        //messageText.resignFirstResponder()
        
        //Change the title of the send button:
        sender.setTitle("Message Sent", forState: UIControlState.Normal)
    }

}

