//
//  Menu.swift
//  MyMeal 2.0
//
//  Created by Teri Minogue on 2/6/16.
//
//

import UIKit

struct Menu {
    var name: String?
    var allergen: String?
    
    init(name: String?, allergen: String?) {
        self.name = name
        self.allergen = allergen
    }
}
