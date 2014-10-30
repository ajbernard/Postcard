//
//  ViewController.swift
//  Postcard
//
//  Created by WPP Administrator on 10/28/14.
//  Copyright (c) 2014 Bitfountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var receiver: UITextField!
    @IBOutlet weak var messageText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessagePressed(sender: UIButton) {
        
        messageLabel.text = messageText.text
        messageText.text = nil
        messageLabel.hidden = false
        sender.backgroundColor = UIColor.blueColor()
        messageText.resignFirstResponder()
        sender.setTitle("Message Sent", forState: UIControlState.Normal)
    }

}

