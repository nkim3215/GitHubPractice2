//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Nathan Kim on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    var animals: [String] = ["Panda", "Elephat", "Narwhale"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SecondViewController = segue.destination as! SecondViewController
        SecondViewController?.animal = animals

        guard let selectedRow = tableView.indexPathForSelectedRow?.row else {return}
    }
}

