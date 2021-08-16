//
//  RecipeCollectionViewController.swift
//  livingAlone-home
//
//  Created by Abraham Park on 2021/08/12.
//
import UIKit
import Foundation

class RecipeCollectionViewController: UICollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        
        imageView.image = UIImage(named: info.thumbnail)
        label.text = info.name
        
        return cell
    }
}




















