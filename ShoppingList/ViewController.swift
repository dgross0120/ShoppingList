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
    
    var items:[Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let item1 = Item(name: "Milk", quantity: 2)
        let item2 = Item(name: "Blueberries")
        let item3 = Item(name: "Cosmic Brownies", quantity: 100)
        
        items = [item1, item2, item3]
    }

    @IBAction func addItem(_ sender: Any) {
        if let newItemName = newItemTextField.text, newItemName != "" {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") { but can crash
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let itemName = items[indexPath.row].name
            
            cell.textLabel?.text = itemName
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
    


