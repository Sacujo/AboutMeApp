//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 17.09.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var introductionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.username) 👋"
        introductionLabel.text = "My name is \(user.person.name) \(user.person.surname)"
    }
    }

