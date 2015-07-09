//
//  HomePageViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/12/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit
import GoogleMobileAds



class HomePageViewController: UIViewController, BWWalkthroughViewControllerDelegate, GADBannerViewDelegate {

    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var coupleButton: UIButton!
    @IBOutlet weak var partyButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var ruleButton: UIButton!

    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let theWidth = view.frame.size.width
        let theHeight = view.frame.size.height
        

        friendsButton.backgroundColor = UIColorFromRGB(0xF6AB3E)
        friendsButton.layer.cornerRadius = 2
        friendsButton.clipsToBounds = true

        coupleButton.backgroundColor = UIColorFromRGB(0xE6437A)
        coupleButton.layer.cornerRadius = 2
        coupleButton.clipsToBounds = true
        

        partyButton.backgroundColor = UIColorFromRGB(0x3FAADA)
        partyButton.layer.cornerRadius = 2
        partyButton.clipsToBounds = true
        
        customButton.backgroundColor = UIColorFromRGB(0x01C6C7)
        customButton.layer.cornerRadius = 2
        customButton.clipsToBounds = true
        
        ruleButton.backgroundColor = UIColorFromRGB(0x9B9B9B)
        ruleButton.layer.cornerRadius = 1
        ruleButton.clipsToBounds = true
        
        self.navigationItem.hidesBackButton = true

        self.navigationItem.hidesBackButton = true
        
        self.bannerView2.adUnitID = "ca-app-pub-9876067486959974/6946840441"
        
        self.bannerView2.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView2.loadRequest(request)
        
    }

    
    
    override func viewDidAppear(animated: Bool) {
        
       self.navigationItem.setHidesBackButton(true, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func ruleButtonPressed(sender: AnyObject) {
        
        println("ruleButtonPressed")
        
        // Get view controllers and build the walkthrough
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let walkthrough = stb.instantiateViewControllerWithIdentifier("walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewControllerWithIdentifier("walk1") as! UIViewController
        let page_two = stb.instantiateViewControllerWithIdentifier("walk2") as! UIViewController
        let page_three = stb.instantiateViewControllerWithIdentifier("walk3") as! UIViewController
        let page_four = stb.instantiateViewControllerWithIdentifier("walk4") as! UIViewController
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.addViewController(page_one)
        walkthrough.addViewController(page_two)
        walkthrough.addViewController(page_three)
        walkthrough.addViewController(page_four)
        
        self.presentViewController(walkthrough, animated: true, completion: nil)
        
    }
    

    func walkthroughCloseButtonPressed() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    

    
}
