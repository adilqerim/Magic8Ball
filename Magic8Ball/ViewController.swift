//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Adil on 7/17/19.
//  Copyright © 2019 Adil & Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        update8BallImage()
    }

    @IBAction func askButton(_ sender: UIButton) {
        update8BallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update8BallImage()
    }
    func update8BallImage() {
        let randomNum = Int.random(in: balls.indices)
        imageView.image = UIImage(named: balls[randomNum])
    }
    
}

