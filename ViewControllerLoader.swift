//
//  ViewControllerLoader.swift
//  Brain Power
//
//  Created by Abhinav Kolli on 10/26/19.
//  Copyright © 2019 Abhinav Kolli. All rights reserved.
//

import UIKit

class ViewControllerLoader: UIViewController {

    var loadTimer: Timer! //Timer object

    override func viewDidLoad() {
        super.viewDidLoad()
        loadTimer = Timer.scheduledTimer(timeInterval: 3.5, target: self, selector: #selector(transition), userInfo: nil, repeats: true)
        

    }

    @IBAction func next(_ sender: UIButton) {
        
    }
    
    func tansition(){
        
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerMain") as! ViewControllerMain
    self.navigationController?.pushViewController(nextVC, animated: true)
        loadTimer.invalidate()
        
    }

    

}
