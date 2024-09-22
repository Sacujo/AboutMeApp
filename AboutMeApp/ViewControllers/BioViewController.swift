//
//  BiobraphyViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 22.09.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.surname
    }
}
