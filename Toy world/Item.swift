//
//  Item.swift
//  Toy world
//
//  Created by 王一川 on 24/9/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import Foundation
import UIKit

class Item{
    var title:String
    var price:Double
    var image:String
    
    init(title:String, price:Double, image:String) {
        self.image = image
        self.price = price
        self.title = title
    }
    
}
