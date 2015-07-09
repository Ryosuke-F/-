//
//  CoupleCustom2ViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 7/4/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit

class CoupleCustom2ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var coupleCustomView2: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let image = UIImage(named: "bg_custom.png")
        self.coupleCustomView2.backgroundView = UIImageView(image: image!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return coupleDareArray.count
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("couplecell", forIndexPath: indexPath) as! UICollectionViewCell
        
        
        let arrayText = cell.viewWithTag(1) as! UILabel
        arrayText.text = coupleDareArray[indexPath.row]
        
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
