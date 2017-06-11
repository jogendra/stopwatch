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
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var pauseOutlet: UIButton!
    @IBOutlet weak var resetOutlet: UIButton!
    
    var time = 0
    
    
    var timer = Timer()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeScreen.layer.borderColor = UIColor.black.cgColor
        timeScreen.layer.borderWidth = 1.0
        timeScreen.layer.cornerRadius = 7.0
        
        pauseOutlet.layer.borderColor = UIColor.white.cgColor
        pauseOutlet.layer.borderWidth = 1.0
        pauseOutlet.layer.cornerRadius = 5.0
        
        startOutlet.layer.borderColor = UIColor.white.cgColor
        startOutlet.layer.borderWidth = 1.0
        startOutlet.layer.cornerRadius = 5.0
        
        resetOutlet.layer.borderColor = UIColor.white.cgColor
        resetOutlet.layer.borderWidth = 1.0
        resetOutlet.layer.cornerRadius = 5.0
        
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }

    @IBAction func reset(_ sender: Any) {
        
        time = 0
        timeScreen.text = "0"
    }
    
    func action(){
    
        time += 1
        timeScreen.text = String(time)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    

}

