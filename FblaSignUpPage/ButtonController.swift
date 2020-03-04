//
//  ButtonController.swift
//  FblaSignUpPage
//
//  Created by Ritvik on 3/2/20.
//  Copyright © 2020 sid. All rights reserved.
//

import Foundation

import UIKit

class ButtonController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.layer.cornerRadius = 15
    }
@IBAction func OpenFBLAWebsite(_ sender: Any) {
       UIApplication.shared.openURL(NSURL(string: "http://www.mvfbla.org")! as URL)
   }
   @IBAction func accessSocialMedia(_ sender: UIButton) {
       let tag = sender.tag
       switch tag {
       case 0:
           //show some animation here
           break
       case 1:
           UIApplication.shared.openURL(NSURL(string: "https://www.facebook.com/MontaVistaBusiness/")! as URL)
           break
       case 2:
           UIApplication.shared.openURL(NSURL(string: "https://www.instagram.com/mvfbla/?hl=en")! as URL)
           break
       default:
           break
       }

   }

}

