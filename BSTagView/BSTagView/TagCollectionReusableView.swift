//
//  TagCollectionReusableView.swift
//  BSTagView
//
//  Created by Sami on 5/15/20.
//  Copyright © 2020 Hungrynaki.com. All rights reserved.
//

import UIKit

class TagCollectionReusableView: UICollectionReusableView {
   @IBOutlet var tagHeaderLabel: UILabel!
}

class CustomButton: UIButton {
    var section: Int = 0
    var row : Int = 0
}
