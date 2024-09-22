//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 17.09.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
//    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.username ?? "no name") 👋"
    }
    
}
