//
//  DisclosureTableCell.swift
//  Audiobook
//
//  Created by Олег Лейзер on 23/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

class DisclosureTableCell: BasicTableCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with viewModel: BaseRowViewModel) {
        configureBase(with: viewModel)
    }
    static func calculateHeight(for _: BaseRowViewModel, with _: CGFloat) -> CGFloat {
        return defaultHeight
    }
}
