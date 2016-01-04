//
//  CircleProgress.swift
//  Pods
//
//  Created by David Marín Calleja on 03/01/16.
//
//

import Foundation

public class CircleProgress : UIControl {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func makeBezier (centerPoint: CGPoint, layer: CAShapeLayer, view: UIView) {
        let path = UIBezierPath()
        path.addArcWithCenter(centerPoint,
                                    radius: 50.0,
                                startAngle: 0,
                                  endAngle: CGFloat( 2 * M_PI ),
                                 clockwise: true)
        
        layer.bounds = CGRect(x:0, y:0, width:100, height:100)
        layer.position = view.center
        layer.path = path.CGPath
        
        layer.strokeColor = UIColor.blueColor().CGColor
        layer.fillColor = UIColor.clearColor().CGColor
        layer.lineWidth = 4.0
        layer.lineCap = kCALineCapRound
        
        layer.backgroundColor = UIColor.redColor().CGColor

        CATransaction.begin()
        CATransaction.setCompletionBlock({
            NSLog("terminado")
        })
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        /* set up animation */
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = 2.5
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        
        layer.addAnimation(animation, forKey: "drawLineAnimation")
        CATransaction.commit()
        
        view.layer.addSublayer(layer)
    }
}