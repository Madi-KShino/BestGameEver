//
//  GridButton.swift
//  BestApp
//
//  Created by Madison Kaori Shino on 7/18/19.
//  Copyright © 2019 Madi S. All rights reserved.
//


import UIKit

//Custom Class for Buttons (playable spaces)
class GridButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpButtons()
    }
    
    func setUpButtons() {
        self.backgroundColor = #colorLiteral(red: 0.9999071956, green: 1, blue: 0.999881804, alpha: 1)
        self.tintColor = #colorLiteral(red: 0.8852323294, green: 0.6136006117, blue: 0.5342262387, alpha: 1)
    }
}
