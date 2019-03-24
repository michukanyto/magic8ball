//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Marlon Escobar on 2019-03-24.
//  Copyright © 2019 Marlon Escobar A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewBall: UIImageView!
    
    @IBOutlet weak var buttonAsk: UIButton!
    
    
    
    var ballArray = ["ball1.png","ball2.png","ball3.png","ball4.png","ball5.png"]
    var randomBallNumber:Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageViewBall.image = UIImage(named: ballArray[1])
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageViewBall.image = UIImage(named: ballArray[randomBallNumber])
    }

  
    
    @IBAction func buttonAskPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

