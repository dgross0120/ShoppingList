//
//  ViewController.swift
//  ShoppingList
//
//  Created by Dylan Gross on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var newItemTextField: UITextField!
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    @IBAction func addItem(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") { but can crash
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            cell.textLabel?.text = "Hello"
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
    


