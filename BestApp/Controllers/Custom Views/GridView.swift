//
//  GridView.swift
//  BestApp
//
//  Created by Madison Kaori Shino on 7/18/19.
//  Copyright © 2019 Marcus A. All rights reserved.
//

import UIKit

//Custom Class for Grid Lines
class GridView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpGridViews()
    }
    
    func setUpGridViews() {
        self.backgroundColor = .clear
        self.layer.borderWidth = 6
        self.layer.borderColor = #colorLiteral(red: 0.1300181448, green: 0.2983654439, blue: 0.274409622, alpha: 1)
        self.addCornerRadius()
    }
}

