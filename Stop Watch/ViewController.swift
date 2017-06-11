//
//  ViewController.swift
//  Stop Watch
//
//  Created by JOGENDRA on 11/06/17.
//  Copyright © 2017 Jogendra Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeScreen: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeScreen.layer.borderColor = UIColor.brown.cgColor
        timeScreen.layer.borderWidth = 1.0
        
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        
    }

    @IBAction func reset(_ sender: Any) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    

}

