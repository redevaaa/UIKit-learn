//
//  Product.swift
//  UITableView
//
//  Created by admin on 2020/12/8.
//

import Foundation

class Product: NSObject {
    var name: String
    var imageName: String
    var details: String
    
    init(name: String, imageName: String, details: String) {
        self.name = name
        self.imageName = imageName
        self.details = details
    }
}
