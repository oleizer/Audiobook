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
            context("verions", closure: {
                let dict = Bundle.main.infoDictionary
                it("should short verion", closure: {
                    let expectableVerion = dict?["CFBundleVersion"] as? String
                    let actualVersion = Bundle.main.bundleVersion()
                    expect(expectableVerion).to(equal(actualVersion))
                })
            })
        }
    }
}
