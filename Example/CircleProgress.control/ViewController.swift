//
//  ViewController.swift
//  CircleProgress.control
//
//  Created by David on 12/29/2015.
//  Copyright (c) 2015 David. All rights reserved.
//

import UIKit
import CircleProgress_control

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let circleProgress = CircleProgress()
        let path = circleProgress.makeBezier(CGPoint(x: 0, y: 0))
        
        let recShape = CAShapeLayer()
        recShape.bounds = CGRect(x:0, y:0, width:100, height:100)
        recShape.position = self.view.center
        recShape.path = path.CGPath
        
        recShape.strokeColor = UIColor.blackColor().CGColor
        recShape.fillColor = UIColor.clearColor().CGColor
        recShape.lineWidth = 2.0
        recShape.lineCap = kCALineCapRound

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        /* set up animation */
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = 2.5
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        
        recShape.addAnimation(animation, forKey: "drawLineAnimation")
        
        self.view.layer.addSublayer(recShape)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

