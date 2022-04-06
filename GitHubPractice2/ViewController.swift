//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Nathan Kim on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    var animals: [String] = ["Panda", "Elephant", "Narwhale"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]

        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedRow = tableView.indexPathForSelectedRow?.row else {return}
        let SecondViewController = segue.destination as! SecondViewController
        SecondViewController.animal = animals[selectedRow]

    }
}

