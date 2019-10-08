//
//  PaymentController.swift
//  Toy world
//
//  Created by Yichuan Wang on 8/10/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit
import LocalAuthentication

class PaymentController: UIViewController {

    @IBOutlet weak var myImage: UIImageView?
    @IBOutlet weak var myTitle: UILabel?
    @IBOutlet weak var myPrice: UILabel?
   
    var item:Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myImage?.image = UIImage(named: item!.image)
        myTitle?.text = item!.title
        myPrice?.text = "$" + String(item!.price)
    }
    

    
    @IBAction func GoToPayment(_ sender: Any) {
        let context = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            let reason = "Identify yourself!"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { (isIdentified, error) in
                if isIdentified{
                    DispatchQueue.main.async {
                        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentSuccess")
                        self.present(viewController, animated: true, completion: nil)
                        CartViewController.items.remove(at: 0)
                    }
                   
                }else{
                    print("incorrect")
                }
            }
        }
        else{
            //doesnt support touch id
        }
    }
        
}
    



