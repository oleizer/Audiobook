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
                it("should short string verion", closure: {
                    var expectableVerion = dict?["CFBundleShortVersionString"] as? String
                    expectableVerion?.append(" (DEV)")

                    let actualVersion = Bundle.main.shortVersionString()
                    expect(expectableVerion).to(equal(actualVersion))
                })
                it("detailed short string verion", closure: {
                    let expectableVerion = dict?["CFBundleShortVersionString"] as? String
                    let expectableBuild = dict?["CFBundleVersion"] as? String
                    let expectableResult = "\(expectableVerion ?? "") (\(expectableBuild ?? ""))"
                    
                    let actualResult = Bundle.main.detailedVersionNumber()
                    expect(expectableResult).to(equal(actualResult))
                })
            })
        }
    }
}
