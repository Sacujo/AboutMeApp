//
//  BiobraphyViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 22.09.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet weak var bioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioLabel.text = user.person.bio
    }
}
