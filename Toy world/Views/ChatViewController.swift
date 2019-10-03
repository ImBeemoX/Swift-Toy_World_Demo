//
//  ChatController.swift
//  Toy world
//
//  Created by  on 3/10/19.
//  Copyright © 2019 Wang Yichuan. All rights reserved.
//

import UIKit


class ChatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}


class ChatCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews(){
        backgroundColor = UIColor.blue
    }



}
