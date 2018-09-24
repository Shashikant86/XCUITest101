//
//  ViewController.swift
//  XCUITest101
//
//  Created by Shashikant Jagtap on 24/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    @IBAction func enterPressed(_ sender: Any) {
        
        welcomeText.text = "Welcome to XCUITest"
        welcomeText.isHidden = false
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

