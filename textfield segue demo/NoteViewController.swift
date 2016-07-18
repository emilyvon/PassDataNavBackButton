//
//  NoteViewController.swift
//  textfield segue demo
//
//  Created by Apoorv Mote on 16/07/16.
//  Copyright © 2016 Apoorv Mote. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var noteTextView: UITextView!
    
    var note: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let note = note {
            
            noteTextView.text = note
        }
        
        noteTextView.becomeFirstResponder()
        
        // pass data back
        navigationController?.delegate = self
        
    }
    
    
    
}

extension NoteViewController: UINavigationControllerDelegate {
    
    // pass data back
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        
        if let formViewController = viewController as? ViewController {
            
            formViewController.note = noteTextView.text
        }
        
    }
}