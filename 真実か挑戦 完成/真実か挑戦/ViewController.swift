//
//  ViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/12/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, BWWalkthroughViewControllerDelegate, GADBannerViewDelegate{
    
    @IBOutlet weak var backgroundViewImage: UIImageView!
    @IBOutlet weak var truthLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var dareLabel: UILabel!
    @IBOutlet weak var ruleButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    

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
        
        ruleButton.backgroundColor = UIColorFromRGB(0x01C6C7)
        

        startButton.backgroundColor = UIColorFromRGB(0xF96D6E)
        
        ruleButton.layer.cornerRadius = 3
        ruleButton.clipsToBounds = true
        
        startButton.layer.cornerRadius = 3
        startButton.clipsToBounds = true


        self.bannerView.adUnitID = "ca-app-pub-9876067486959974/2935443245"
        
        self.bannerView.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView.loadRequest(request)
        
        
    }

    
    func walkthroughCloseButtonPressed() {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    @IBAction func showWalkthrough(sender: AnyObject) {
        
        println("showWalkthrough")
        
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
    


    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

