//
//  ViewController.swift
//  Brain Power
//
//  Created by Abhinav Kolli on 10/20/19.
//  Copyright © 2019 Abhinav Kolli. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var loadingLogo: UIImageView!
    
    @IBAction func slideUpButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rotateLogo(imageView: loadingLogo, aCircleTime: 1.5)
        
    }
    
    func rotateLogo(imageView: UIImageView, aCircleTime: Double) {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.fromValue = 0.0
        rotationAnimation.toValue = (Double.pi * 2)
        rotationAnimation.duration = aCircleTime
        rotationAnimation.repeatCount = .infinity
        imageView.layer.add(rotationAnimation, forKey: nil)
    }
}


