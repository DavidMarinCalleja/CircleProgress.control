//
//  ListCircleProgressTypePresenter.swift
//  CircleProgress
//
//  Created by David Marín on 08/01/16.
//
//

import Foundation

class ListCircleProgressTypePresenter: NSObject, ListCircleProgressTypeModuleInterface
{
    var interactor: ListCircleProgressTypeInteractor?
    weak var wireframe: ListCircleProgressTypeWireframe?
    weak var userInterface: ListCircleProgressTypeViewInterface?

    // MARK: - ListCircleProgressTypeModuleInterface methods
    // implement module interface here
}
