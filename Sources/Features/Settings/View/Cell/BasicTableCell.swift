//
//  BasicTableCell.swift
//  Audiobook
//
//  Created by Олег Лейзер on 23/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

class BasicTableCell: UITableViewCell {
    private let appearance = Appearance()

    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAppereance()
        addSubviews()
        configureConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureBase(with viewModel: BaseRowViewModel) {
        titleLabel.text = viewModel.title
        separatorView.isHidden = viewModel.showSeparator == false
    }

    private func setupAppereance() {

        backgroundColor = UIColor.white
    }

    private func addSubviews() {
        contentView.addSubview(separatorView)
        contentView.addSubview(titleLabel)
    }

    private func configureConstraints() {
        separatorView.snp.remakeConstraints { make in
            make.leading.equalTo(self).offset(self.appearance.defaultLeftRightMargin)
            make.trailing.equalTo(self)
            make.bottom.equalTo(self)
            make.height.equalTo(1.0 / UIScreen.main.scale)
        }
        titleLabel.snp.makeConstraints { make in
            make.left.right.equalTo(contentView).inset(appearance.defaultLeftRightMargin)
            make.top.equalTo(contentView).inset(Appearance.titleTopBottomMargin)
            make.height.equalTo(Appearance.titleLabelHeight)
        }
    }
    static var defaultHeight: CGFloat {
        return Appearance.titleLabelHeight + 2 * Appearance.titleTopBottomMargin
    }
}
extension BasicTableCell {
    private struct Appearance {
        static let titleLabelHeight: CGFloat = 20
        static let titleTopBottomMargin: CGFloat = 18
        let defaultLeftRightMargin = 12

    }
}
