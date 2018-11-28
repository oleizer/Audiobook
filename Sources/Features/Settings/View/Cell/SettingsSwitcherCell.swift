//
//  SettingsSwitcherCell.swift
//  Audiobook
//
//  Created by Олег Лейзер on 28/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

class SettingsSwitcherCell: UITableViewCell {
    private lazy var switcher: UISwitch = {
        let view = UISwitch(frame: .zero)
        return view
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryView = switcher
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

//    func configure(with viewModel: BaseRowViewModel) {
//        configureBase(with: viewModel)
//    }
//    static func calculateHeight(for _: BaseRowViewModel, with _: CGFloat) -> CGFloat {
//        return defaultHeight
//    }
}
