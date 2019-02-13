//
//  Item.swift
//  ShoppingList
//
//  Created by Dylan Gross on 2/12/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import Foundation
class Item {
    var name:String
    var quantity:Int
    init(name:String) {
        self.quantity = 1
        self.name = name
    }
    init(name: String, quantity:Int) {
        self.name = name
        self.quantity = quantity
    }
}
