//
//  GridButton.swift
//  BestApp
//
//  Created by Madison Kaori Shino on 7/18/19.
//  Copyright © 2019 Madi S. All rights reserved.
//


import UIKit

class GridButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpButtons()
    }
    
    func setUpButtons() {
        self.backgroundColor = #colorLiteral(red: 0.2038360238, green: 0.6365913749, blue: 0.6057612896, alpha: 1)
        self.tintColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    }
}
