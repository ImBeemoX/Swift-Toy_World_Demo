//
//  CartViewController.swift
//  Toy world
//
//  Created by Yichuan Wang on 7/10/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit

class CartViewController: UITableViewController  {
    
   
  
    var item:Item!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//        vc.item = items[indexPath.row]
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartViewCell
        cell.myImage.image = UIImage(named: item.image)
        cell.myPrice.text = String(item.price) + " / Month"
        cell.myTitle.text = item.title
        
        return cell
    }

}
