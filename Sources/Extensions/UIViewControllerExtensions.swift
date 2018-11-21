//
//  UIViewControllerExtensions.swift
//  SharedExtensions
//
//  Created by Олег Лейзер on 04/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

public extension UIViewController {
    // Установить NavigationController для UIViewController
    public func wrapToNavigationController() -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: self)
        return navigationController
    }
}
