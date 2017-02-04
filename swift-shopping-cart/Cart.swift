//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items : [Item] = []
    
    func totalPriceInCents() -> Int {
        var totalCost : Int = 0
        
        for item in items {
            totalCost += item.priceInCents
        }
        return totalCost
    }
    
    func add(item: Item) {
        self.items.append(item)
    }
    
    func remove(item: Item) {
        self.items.remove(at: self.items.index(of: item)!)
    }
    
    func items(name: String) -> [Item] {
        
        var newArray : [Item] = []
        
        for item in self.items {
            if item.name == name {
                newArray.append(item)
            }
        }
        return newArray
    }
    
    func items(price: Int) -> [Item] {
        
        var newArray : [Item] = []
        
        for item in self.items {
            if price >= item.priceInCents {
                newArray.append(item)
            }
        }
        return newArray
    }
    
    func items(price: Int) -> [Item] {
        
        var newArray : [Item] = []
        
        for item in self.items {
            if price <= item.priceInCents {
                newArray.append(item)
            }
        }
        return newArray
    }
    
}
