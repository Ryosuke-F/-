//
//  SegmentViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 7/3/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!

    @IBOutlet weak var container1: UIView!
    @IBOutlet weak var container2: UIView!
    
    
    @IBOutlet weak var back: UIImageView!
    
    
    var state: BaseState!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabbar = UINavigationBar.appearance()
        tabbar.tintColor = UIColor.whiteColor()
        
        self.state = BaseState.One
        self.switchDisplayContainer(self.state)
        
        let image = UIImage(named: "bg_custom.png")
        self.back.image = image
        
        
       
    }
    
    @IBAction func BackButton(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    @IBAction func segControl(sender: UISegmentedControl) {
        
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.state = BaseState.One
        case 1:
            self.state = BaseState.Two
        default:
            self.state = BaseState.One
   
        }
        
        self.switchDisplayContainer(self.state)
        
    }
    
    
    func switchingWholeContainer(displayState: BaseState) {
        
        UIView.animateWithDuration(0.2, delay: 0, options: nil, animations: {
            
            self.switchDisplayContainer(displayState)
            
        }, completion: nil)
        
    }
    
    func switchDisplayContainer(displayState: BaseState) {
        
        if (displayState.toSegmentNum() == BaseState.One.toSegmentNum()) {
            
            self.container1.alpha = 1
            self.view.addSubview(container1)
            
            self.container2.alpha = 0
            self.container2.removeFromSuperview()
            
        } else if (displayState.toSegmentNum() == BaseState.Two.toSegmentNum()) {
            
            self.container1.alpha = 0
            self.container1.removeFromSuperview()
            
            self.container2.alpha = 1
            self.view.addSubview(container2)
            
            
        }
    }
    
    
    
}
