//
//  ViewController.swift
//  textfield segue demo
//
//  Created by Apoorv Mote on 16/07/16.
//  Copyright © 2016 Apoorv Mote. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var noteTextField: UITextField!

    var note: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        noteTextField.delegate = self
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        noteTextField.text = note
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        performSegueWithIdentifier("openNote", sender: self)
        
        return false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "openNote" {
            
            let noteController = segue.destinationViewController as! NoteViewController
            
            noteController.note = noteTextField.text
        }
    }

}

