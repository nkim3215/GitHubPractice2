//
//  SecondViewController.swift
//  GitHubPractice2
//
//  Created by Nathan Kim on 4/6/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animal: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animal = nameLabel.text
        imageView.image = UIImage(named: "animal")
        
    }
    
}
