//
//  ListCircleProgressTypeViewController.swift
//  CircleProgress
//
//  Created by David Marín on 08/01/16.
//
//

import UIKit
import CircleProgress_control

class ListCircleProgressTypeViewController: UIViewController, ListCircleProgressTypeViewInterface
{
    var eventHandler: ListCircleProgressTypeModuleInterface?

    // MARK: - View lifecycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let circleProgress = CircleProgress()
        circleProgress.makeBezier(CGPoint(x: 0, y: 0),
            view: self.view)
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
    }

    // MARK: - ListCircleProgressTypeViewInterface methods

    // *** implement view_interface methods here

    // MARK: - Button event handlers

    // ** handle UI events here

}
