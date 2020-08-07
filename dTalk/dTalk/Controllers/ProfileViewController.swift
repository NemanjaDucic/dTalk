//
//  ProfileViewController.swift
//  dTalk
//
//  Created by Nikola Ticojevic on 8/6/20.
//  Copyright © 2020 Nikola Ticojevic. All rights reserved.
//

import Foundation
import UIKit
class ProfileViewController : UIViewController {
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
    }
    
}

