//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quantityArray = [6, 4, 12, 4]
        let itemsArray = ["Bananas", "Apples", "Eggs", "Rolls"]
        shoppingList = makeShoppingList(itemsArray, quantityOfItems: quantityArray)
    
        
    }
    
    func makeShoppingList(items:[String], quantityOfItems: [Int]) -> [String] {
        var combinedArray: [String] = []
        if quantityOfItems.count == items.count {
            for (index, item) in items.enumerate() {
                let objectToAdd = "\(index + 1). \(quantityOfItems[index]) \(item)"
                combinedArray.append(objectToAdd)
            }
        }
        return combinedArray
    }
    
}