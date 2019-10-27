//
//  ViewControllerTerms.swift
//  Brain Power
//
//  Created by Abhinav Kolli on 10/26/19.
//  Copyright © 2019 Abhinav Kolli. All rights reserved.
//

import UIKit

class ViewControllerTerms: UIViewController {

    
    @IBOutlet weak var btnCheckBox: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnCheckBox.image = UIImage(named: "emptyCheckBox")
    }
    @IBAction func buttonChecked(_ sender: UIButton) {
        btnCheckBox.image = UIImage(named: "checkBox")
    }
    
    @IBAction func submit(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
