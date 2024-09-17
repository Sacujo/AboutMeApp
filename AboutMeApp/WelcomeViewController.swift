//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 17.09.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    var userName: String!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName!) 👋"
    }
    
}
