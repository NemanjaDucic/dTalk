//
//  ViewController.swift
//  dTalk
//
//  Created by Nikola Ticojevic on 8/1/20.
//  Copyright © 2020 Nikola Ticojevic. All rights reserved.
//

import UIKit
import MessageUI

class LoginViewController: UIViewController,MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func sendFeedbackButtonTapped(_ sender: Any) {
        showMailComposer()
        
    }
    func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
           let ac = UIAlertController (title: "Unfortionatly this Device Cant Send Mail", message: "", preferredStyle: UIAlertController.Style.alert)

            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["dTalkAppTeam@gmail.com"])
        composer.setSubject("Feedback")
        composer.setMessageBody("", isHTML: false)
        
        present(composer, animated: true)
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            //Show error alert
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            
           let ac = UIAlertController (title: "Email Sending Canceled", message: "", preferredStyle: UIAlertController.Style.alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
            
        case .failed:
            
            let ac = UIAlertController (title: "Email Failed to Send", message: "", preferredStyle: UIAlertController.Style.alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
            
        case .saved:
            
            let ac = UIAlertController (title: "Email Saved", message: "", preferredStyle: UIAlertController.Style.alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
            
        case .sent:
            
            let ac = UIAlertController (title: "Email sent", message: "thanks for giving us feedback", preferredStyle: UIAlertController.Style.alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
            
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true)
    }


}

    
    

