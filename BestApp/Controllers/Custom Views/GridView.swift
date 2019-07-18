//
//  GridView.swift
//  BestApp
//
//  Created by Madison Kaori Shino on 7/18/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class GridView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpGridViews()
    }
    
    func setUpGridViews() {
        self.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        self.layer.borderWidth = 6
        self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.addCornerRadius()
    }
}

