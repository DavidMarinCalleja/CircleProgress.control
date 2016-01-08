//
//  CircleProgressAppDependencies.swift
//  CircleProgress
//
//  Created by David Marín on 08/01/16.
//
//

import Foundation
import UIKit

class CircleProgressAppDependencies: NSObject
{

    class func initWithWindow(window: UIWindow) -> CircleProgressAppDependencies
    {

        let obj = CircleProgressAppDependencies()
        obj.configureDependencies(window)

        return obj
    }

    func installRootViewController()
    {
        // *** present first wireframe here
    }

    func configureDependencies(window: UIWindow)
    {
        // -----
        // root classes
        let rootWireframe = RootWireframe.init(window: window)
        // *** add datastore

        // *** module initialization
    }
}
