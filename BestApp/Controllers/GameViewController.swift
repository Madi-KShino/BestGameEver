//
//  GameViewController.swift
//  BestApp
//
//  Created by Darin Marcus Armstrong on 7/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var playerImage = #imageLiteral(resourceName: "cross")

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func switchImage(button: UIButton) {
        button.imageView?.image = playerImage
        playerImage = #imageLiteral(resourceName: "circle")
    }
    
    func clearImages(button: UIButton) {
        button.imageView?.image = nil
    }

}
