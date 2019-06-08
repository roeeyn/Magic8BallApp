//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Roeeyn on 6/7/19.
//  Copyright © 2019 Roeeyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputBallMessage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateRandomBall(){
        let images = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        let randomImageIndex = Int(arc4random_uniform(5))
        outputBallMessage.image = UIImage(named: images[randomImageIndex])
    }
    
    @IBAction func onAskClicked(_ sender: Any) {
        updateRandomBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateRandomBall()
    }
    
}

