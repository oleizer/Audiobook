//
//  UITableViewExtensionsTests.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import Quick
import Nimble
@testable import Audiobook

class UITableViewExtensionsTests: QuickSpec {
    let tableView = UITableView()
    let emptyTableView = UITableView()
    override func spec() {
        describe("UITableView extensions") {
            
            context("Register cell", closure: {
                it("should return cell with class", closure: {
                    let tableView = UITableView()
                    tableView.register(TestCell.self)
                    let cell = tableView.dequeueReusableCell(TestCell.self)
                    expect(cell).toNot(beNil())
                    expect(cell.reuseIdentifier).to(equal(TestCell.identifier))
                })
//                it("should return cell with nib", closure: {
//                    //                    let tableView = UITableView()
//                    let nib = UINib(nibName: "UITableViewCell", bundle: Bundle(for: UITableViewExtensionsTests.self))
//                    self.tableView.register(nib, withCellClass: UITableViewCell.self)
//                    let cell = self.tableView.dequeueReusableCell(UITableViewCell.self)
//                    expect(cell).toNot(beNil())
//                    expect(cell.reuseIdentifier).to(equal(UITableViewCell.identifier))
//                })
                it("should return cell with class", closure: {
                    let tableView = UITableView()
                    tableView.register(TestCell.self)
                    let cell = tableView.dequeueReusableCell(TestCell.self, for: TestData.indexPath)
                    expect(cell).toNot(beNil())
                    expect(cell.reuseIdentifier).to(equal(TestCell.identifier))
                })
            })
            //            let tableView = UITableView()
            it("reload", closure: {
                let tableView = UITableView()
                
                var didReload = false
                tableView.reloadData {
                    didReload = true
                }
                expect(didReload).toEventually(beTruthy())
            })
            it("should return cell", closure: {
                let tableView = UITableView()
                
                tableView.register(TestCell.self)
                let cell = tableView.dequeueReusableCell(TestCell.self)
                expect(cell).toNot(beNil())
                expect(cell.reuseIdentifier).to(equal(TestCell.identifier))
            })
            //            it("deqNot", closure: {
            //                let tableView = UITableView()
            //
            ////                tableView.register(TestCell.self)
            //                let cell = tableView.dequeueReusableCell(TestCell.self)
            //                expect(cell).to(beNil())
            ////                expect(cell.reuseIdentifier).to(equal(TestCell.identifier))
            //            })
            //
            context("table footerview", closure: {
                let tableView = UITableView(frame: .zero, style: .plain)
                
                it("should remove footer and set nil", closure: {
                    tableView.tableFooterView = UIView()
                    expect(tableView.tableFooterView).toNot(beNil())
                    tableView.removeTableFooterView()
                    expect(tableView.tableFooterView).to(beNil())
                })
                it("should set empty view in footer", closure: {
                    let view = UIView()
                    tableView.clearTableFooterView()
                    expect(tableView.tableFooterView).toNot(beNil())
                    expect(tableView.tableFooterView?.frame).to(equal(view.frame))
                })
            })
            context("table register cell", closure: {
                it("register class", closure: {
                    let tableView = UITableView(frame: .zero, style: .plain)
                    tableView.register(TestCell.self)
                    
                    
                })
            })
        }
    }
}

extension UITableViewExtensionsTests: UITableViewDataSource {
    enum TestData {
        static let indexPath: IndexPath = IndexPath(row: 0, section: 0)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableView == self.emptyTableView ? 0: 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.emptyTableView {
            return 0
        } else {
            return section == 0 ? 5 : 8
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    class TestCell: UITableViewCell {
        
    }
}
