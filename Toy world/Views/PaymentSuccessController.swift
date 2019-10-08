//
//  PaymentSuccessController.swift
//  Toy world
//
//  Created by Yichuan Wang on 8/10/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit

class PaymentSuccessController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func isClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // dismiss all child windows
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
           appDelegate.window?.rootViewController?.dismiss(animated: true, completion: nil)
           (appDelegate.window?.rootViewController as? UINavigationController)?.popToRootViewController(animated: true)
        }
    }
   
}
