//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 22.09.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var ageLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        ageLabel.text = "\(user.person.age)"
    }
}
