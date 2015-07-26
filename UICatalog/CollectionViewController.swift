//
//  CollectionViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 7/26/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    let reuseIdentifier = "CollectionViewCell"
}

extension CollectionViewController : UICollectionViewDataSource {
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        cell.label.text = "\(indexPath.row + 1)"
        return cell
    }
}

extension CollectionViewController : UICollectionViewDelegate {
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("selected \(indexPath)")
    }
}