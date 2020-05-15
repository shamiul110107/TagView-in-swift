//
//  TagCollectionViewCell.swift
//  BSTagView
//
//  Created by Sami on 5/15/20.
//  Copyright © 2020 Hungrynaki.com. All rights reserved.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    @IBOutlet var tagLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1
    }
}
