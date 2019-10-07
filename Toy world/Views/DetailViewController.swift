//
//  DetailViewController.swift
//  Toy world
//
//  Created by 王一川 on 24/9/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblPrice: UILabel!

    @IBAction func AddToCardClicked(_ sender: Any) {
       let vc = storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
        vc.item = item
        self.navigationController?.pushViewController(vc, animated: true)
    }
    var item:Item?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = item?.title
        lblPrice.text = String(item!.price) + " / Month"
        imgImage.image = UIImage(named: item!.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cart = segue.destination as! CartViewController
        cart.item = item
    }
    
    

}
