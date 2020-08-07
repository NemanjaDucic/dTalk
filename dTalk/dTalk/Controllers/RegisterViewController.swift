//
//  RegisterViewController.swift
//  dTalk
//
//  Created by Nikola Ticojevic on 8/2/20.
//  Copyright © 2020 Nikola Ticojevic. All rights reserved.
//

import Foundation
import UIKit
class RegisterViewController : UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil )
    }
    @IBAction func registerButtonTapped(_ sender: Any) {
        if isValidInput(Input: usernameTextField.text!){
        if isValidEmail(testStr: emailTextField.text!){
            
                           let alertController1 = UIAlertController (title: "Welcome To dTalk ", message: "Sucessfull Registration ", preferredStyle: UIAlertController.Style.alert)
                           alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                           present(alertController1, animated: true, completion: nil)
                          
                       }else
                       {

                           let alertController1 = UIAlertController (title: "Please fill email", message: "Please enter valid email", preferredStyle: UIAlertController.Style.alert)

                           alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                           present(alertController1, animated: true, completion: nil)
                       }
                   
                      } else
                           {
                            
                       let alertController1 = UIAlertController (title: "Please enter Useraname", message: "Enter valid username", preferredStyle: UIAlertController.Style.alert)

                       alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                       present(alertController1, animated: true, completion: nil)
                   }
                   
    }
    func isValidInput(Input:String) -> Bool
        {
        let RegEx = "\\A\\w{3,18}\\z"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: Input)
        }
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}
