//
//  SettingsView.swift
//  Audiobook
//
//  Created by Олег Лейзер on 21/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit
import SnapKit

class SettingsView: UIView {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.clearTableFooterView()
        tableView.separatorStyle = .none
//        tableView.separatorColor = .clear
        tableView.backgroundColor = .clear

        tableView.registerHeaderFooter(SettingsSectionHeaderView.self)
        return tableView
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup () {
        backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9843137255, blue: 0.9882352941, alpha: 1)

        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
extension SettingsView: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(DisclosureTableCell.self, isRegister: true)
        cell?.titleLabel.text = "HUI"
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Test section"
//    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard let view = tableView.dequeueReusableHeaderFooter(SettingsSectionHeaderView.self) else {

            return 40
        }
        _ = view.titleLabel.text
        return SettingsSectionHeaderView.defaultHeight
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableHeaderFooter(SettingsSectionHeaderView.self) else {
            return UIView()
        }

        return view
    }
}
