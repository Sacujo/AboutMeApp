//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 22.09.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    
    
    var user: User!
    
    override func viewDidLoad() {
        photoImageView.layer.cornerRadius = photoImageView.frame.size.width / 2
        photoImageView.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        locationLabel.text = user.person.location
        jobLabel.text = user.person.job
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as! BioViewController
        bioVC.user = user
    }
}
