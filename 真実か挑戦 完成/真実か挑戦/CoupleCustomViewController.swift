//
//  CoupleCustomViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 7/4/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit

class CoupleCustomViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var coupleCustomView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "bg_custom.png")
        self.coupleCustomView.backgroundView = UIImageView(image: image!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

        
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return coupleTruthArray.count
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("couplecell2", forIndexPath: indexPath) as! UICollectionViewCell
        
        
        let arrayText = cell.viewWithTag(1) as! UILabel
        arrayText.text = coupleTruthArray[indexPath.row]
        
        arrayText.alpha = 1
        cell.backgroundColor = UIColor.lightTextColor()
        arrayText.textColor = UIColor.whiteColor()
        
        cell.layer.cornerRadius = 2
        cell.clipsToBounds = true
        
        
        
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        
        
        println("\(indexPath.row)")
        
        
    }

    

    
}
