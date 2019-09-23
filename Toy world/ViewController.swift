//
//  ViewController.swift
//  Toy world
//
//  Created by 王一川 on 22/9/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct Item {
        var title: String
        var price: Double
        var image: String
    }
    
    var items:[Item] = [Item(title: "Car", price: 3, image: "Car"), Item(title: "Mario Kart", price: 5, image: "Mario"), Item(title: "Doll", price: 2, image: "Doll"), Item(title: "Bike", price: 4, image: "Bike")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: items[indexPath.row].image)
        cell.myImage.image?.scale
        cell.myPrice.text = String(items[indexPath.row].price) + "/Month"
        cell.myTitle.text = items[indexPath.row].title
        
        return cell
        
    }


}

