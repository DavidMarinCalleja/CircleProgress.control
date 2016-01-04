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
        
        let recShape = CAShapeLayer()
        
        let circleProgress = CircleProgress()
        circleProgress.makeBezier(CGPoint(x: 0, y: 0),
                                  layer: recShape,
                                   view: self.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

