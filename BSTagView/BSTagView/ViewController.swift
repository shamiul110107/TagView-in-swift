//
//  ViewController.swift
//  BSTagView
//
//  Created by Sami on 5/15/20.
//  Copyright © 2020 Hungrynaki.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let titles = [[
            "America",
            "Bangladesh Bangladesh Bangladesh Bangladesh BangladeshBangladesh Bangladesh BangladeshBangladesh Bangladesh",
            "China",
            "Denmark",
            "Egypt",
            "Finland Finland",
            "Germany 123",
            "Holand",
            "Italy",
            "Japan"
        ],[
            "iOS",
            "Android",
            "Web"
        ]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = TagFlowLayout()
        layout.estimatedItemSize = CGSize(width: 140, height: 40)
        collectionView.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return titles.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionViewCell",
                                                            for: indexPath) as? TagCollectionViewCell else {
                                                                return TagCollectionViewCell()
        }
        cell.tagLabel.text = titles[indexPath.section][indexPath.row]
        cell.tagLabel.preferredMaxLayoutWidth = collectionView.frame.width - 32
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        print("kind = \(kind)")
        if (kind == UICollectionView.elementKindSectionHeader) {
            
            if let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TagCollectionReusableView", for: indexPath) as? TagCollectionReusableView {
                sectionHeader.tagHeaderLabel.text = "Section \(indexPath.section)"
                return sectionHeader
            }
        }
        
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 200, height: 30)
    }
}
