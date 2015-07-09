//
//  FriendCustom2ViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 7/3/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit

class FriendCustom2ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UINavigationControllerDelegate {

    @IBOutlet weak var friendCustom2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "bg_custom.png")
        self.friendCustom2.backgroundView = UIImageView(image: image!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dareArray.count
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath) as! UICollectionViewCell
        
        
        let arrayText = cell.viewWithTag(1) as! UILabel
        arrayText.text = dareArray[indexPath.row]
        
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
