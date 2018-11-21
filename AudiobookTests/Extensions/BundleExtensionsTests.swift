//
//  BundleExtensionsTests.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Quick
import Nimble
@testable import Audiobook

class BundleExtensionsTests: QuickSpec {
    override func spec() {
        describe("Bundle Extensions") {
            context("wraping to navigation controller", closure: {
                it("should wrap to UINavigation controller", closure: {
                    let val = Bundle.main.shortVersionString()
                    
                    let viewController = UIViewController(nibName: nil, bundle: nil)
                    let navigationController = viewController.wrapToNavigationController()
                    expect(navigationController).toNot(beNil())
                    expect(navigationController.viewControllers.first).to(equal(viewController))
                })
            })
        }
    }
}
