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
        self.navigationItem.title = "Made by Nathan and Alec"
        nameLabel.text = animal
        imageView.image = UIImage(named: animal!)
        
    }
    
}
