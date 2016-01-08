//
//  ListCircleProgressTypeWireframe.swift
//  CircleProgress
//
//  Created by David Marín on 08/01/16.
//
//

import Foundation
import UIKit

class ListCircleProgressTypeWireframe: NSObject
{
    var rootWireframe: RootWireframe?
    var presenter: ListCircleProgressTypePresenter?
    var viewController: ListCircleProgressTypeViewController?

    func presentSelfFromViewController(viewController: UIViewController)
    {
        // save reference
        self.viewController = ListCircleProgressTypeViewController(nibName: "ListCircleProgressTypeViewController", bundle: nil)

        // view <-> presenter
        self.presenter?.userInterface = self.viewController
        self.viewController?.eventHandler = self.presenter

        // present controller
        // *** present self with RootViewController
    }
}
