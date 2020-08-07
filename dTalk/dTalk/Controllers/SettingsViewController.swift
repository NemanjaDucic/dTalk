//
//  SettingsViewController.swift
//  dTalk
//
//  Created by Nikola Ticojevic on 8/6/20.
//  Copyright © 2020 Nikola Ticojevic. All rights reserved.
//

import Foundation
import UIKit
class SettingsViewController : UIViewController,UITableViewDataSource,UITableViewDelegate{
  
    @IBOutlet weak var settingsTableView: UITableView!
    let array = ["About","Enable Dark Mode","Enable Light Mode","Logout"]
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
    }
    
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingsTableView.dequeueReusableCell(withIdentifier: "settingsCell") as! SettingsTableViewCell
        cell.settingsLabel.text = array[indexPath.row]
        return cell 
        
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if indexPath.row == 0  {
               let alertController1 = UIAlertController (title: "Current App Version", message: "0.0.0.0.0", preferredStyle: UIAlertController.Style.alert)
                   alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   present(alertController1, animated: true, completion: nil)
               
               }
               else if indexPath.row == 1  {
                   overrideUserInterfaceStyle = .dark

                  
               }
               else if indexPath.row == 2 {
                   overrideUserInterfaceStyle = .light
               }
        else if indexPath.row == 3 {
//firebase logout
        }
               
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
}
