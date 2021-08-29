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
    @IBOutlet weak var deleteButton: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = tagLabel.frame.size.height / 2.0
        self.backgroundColor = .lightGray
        self.tagLabel.textColor = .white
    }
}
