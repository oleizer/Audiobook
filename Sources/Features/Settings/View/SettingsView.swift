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
        backgroundColor = .white
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
