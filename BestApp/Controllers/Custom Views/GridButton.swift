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
        self.tintColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    }
}
