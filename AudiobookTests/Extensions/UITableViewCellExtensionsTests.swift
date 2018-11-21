//
//  UITableViewCellExtensionsTests.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Quick
import Nimble
@testable import Audiobook

class UITableViewCellExtensionsTests: QuickSpec {
    override func spec() {
        describe("UITableViewCell extensions") {
            it("should return class name", closure: {
                expect(TestCell.identifier).to(equal("TestCell"))
            })
        }
    }
}

extension UITableViewCellExtensionsTests {
    class TestCell: UITableViewCell {}
}
