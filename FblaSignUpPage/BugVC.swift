//
//  BugVC.swift
//  FblaSignUpPage
//
//  Created by Ritvik on 3/3/20.
//  Copyright © 2020 sid. All rights reserved.
//

import Foundation
import UIKit
import MessageUI
class BugVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var bugInfo: UITextView!
    @IBOutlet weak var cancelBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendReport(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            /*** CHANGE EMAIL*/
            mail.setToRecipients(["ritvikbanakar15@gmail.com"])
            mail.setSubject("Bug Report")
            mail.setMessageBody((bugInfo.text), isHTML: true)
            present(mail, animated: true)
        }else {
            self.showSendMailErrorAlert()
        }
            
        }
    
    func showSendMailErrorAlert() {
          
    let sendMailErrorAlert = UIAlertController(title: "Could Not Send Email", message: "Your device could not send the email. Please check email settings and try again.", preferredStyle: .alert)
    sendMailErrorAlert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
    self.present(sendMailErrorAlert, animated: true, completion: nil)

      }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
    
    

