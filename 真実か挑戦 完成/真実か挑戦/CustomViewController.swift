//
//  CustomViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/13/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit
import GoogleMobileAds


class CustomViewController: UIViewController, GADBannerViewDelegate {
    
    
    @IBOutlet weak var customBack: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var whichonedoyoucustom: UILabel!
    
    @IBOutlet weak var friendsBtn: UIButton!
    @IBOutlet weak var coupleBtn: UIButton!
    @IBOutlet weak var partyBtn: UIButton!
    @IBOutlet weak var backtotop: UIButton!
    
    
    @IBOutlet weak var bannerView6: GADBannerView!

    
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

        friendsBtn.backgroundColor = UIColorFromRGB(0xE6437A)
        friendsBtn.layer.cornerRadius = 2
        friendsBtn.clipsToBounds = true

        coupleBtn.backgroundColor = UIColorFromRGB(0xF6AB3E)
        coupleBtn.layer.cornerRadius = 2
        coupleBtn.clipsToBounds = true

        partyBtn.backgroundColor = UIColorFromRGB(0x3FAADA)
        partyBtn.layer.cornerRadius = 2
        partyBtn.clipsToBounds = true

        backtotop.backgroundColor = UIColorFromRGB(0x9B9B9B)
        backtotop.layer.cornerRadius = 2
        backtotop.clipsToBounds = true
        
        
        self.bannerView6.adUnitID = "ca-app-pub-9876067486959974/5190905644"
        
        self.bannerView6.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView6.loadRequest(request)

        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func friendsBtn_Pressed(sender: AnyObject) {
        
        println("true")
        let vc: AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("couple")
        self.presentViewController(vc as! UIViewController, animated: true, completion: nil)


        
    }
    
    @IBAction func coupleBtn_Pressed(sender: AnyObject) {
        
        //this one is friend button.
        println("hey")
        let vc: AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("friend")
        self.presentViewController(vc as! UIViewController, animated: true, completion: nil)

    }
    
    
    
    @IBAction func partyBtn_Pressed(sender: AnyObject) {
        
        println("yo")
        let vc: AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("party")
        self.presentViewController(vc as! UIViewController, animated: true, completion: nil)

    }
    
    
    
    @IBAction func topBackToPage(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    

}
