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
    
    public func makeBezier (centerPoint: CGPoint) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.addArcWithCenter(centerPoint,
                radius: 50.0,
            startAngle: 0,
              endAngle: CGFloat( 2 * M_PI ),
             clockwise: true)
        return bezierPath
    }
}