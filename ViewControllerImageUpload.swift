//
//  ViewControllerImageUpload.swift
//  Brain Power
//
//  Created by Abhinav Kolli on 10/20/19.
//  Copyright © 2019 Abhinav Kolli. All rights reserved.
//

import UIKit

class ViewControllerImageUpload: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var ImageDisplay : UIImageView!
    
    var count = 0;
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func submitOne(_ sender: UIButton) {
        nameText.text = nil
        ImageDisplay.image = UIImage(named: "placeHolder")
        count += 1;
    }
    
    @IBAction func imageUpload(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        if let image = info[.originalImage] as? UIImage
        {
            ImageDisplay.image = image
        }
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func uploadImages(_ sender: UIButton) {
        createAlert()
    }
    func createAlert() {
        let alert = UIAlertController(title: "Are you sure you want to submit these \(count) photos?", message: "The more the better!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        self.present(alert, animated: true)
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
