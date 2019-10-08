//
//  CartViewController.swift
//  Toy world
//
//  Created by Yichuan Wang on 7/10/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit

class CartViewController: UITableViewController  {
    
   
    static var itemIndex:Int?
    static var items:[Item] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // add observer
        NotificationCenter.default.addObserver(self, selector: #selector(refresh), name: Notification.Name("doRefresh"), object: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CartViewController.items.count
    }
    
    //if cell is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentController") as! PaymentController
        vc.item = CartViewController.items[indexPath.row]
        CartViewController.itemIndex = indexPath.row
        self.show(vc, sender: self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartViewCell
        cell.myImage.image = UIImage(named: CartViewController.items[indexPath.row].image)
        cell.myPrice.text = "$" + String(CartViewController.items[indexPath.row].price)
        cell.myTitle.text = CartViewController.items[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            CartViewController.items.remove(at: indexPath.row)
            refresh()
        }
    }

    
    
    //reload the data before the view is displayed
    override func viewWillAppear(_ animated: Bool) {
        refresh()
    }
    
    @objc public func refresh(){
        tableView.reloadData()
        tableView.refreshControl?.endRefreshing()
    }
  

}
