//
//  SettingsSectionHeaderView.swift
//  Audiobook
//
//  Created by Олег Лейзер on 23/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit
import SnapKit

public class SettingsSectionHeaderView: UITableViewHeaderFooterView {
    private let appearance = Appearance()

    let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .green
        label.text = "Справка".uppercased()
        return label
    }()
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupView () {
        backgroundColor = .green
        contentView.backgroundColor = .blue
        addSubview(titleLabel)

        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(Appearance.titleLabelInsets.left)
            make.trailing.equalToSuperview().offset(Appearance.titleLabelInsets.right)
            make.bottom.equalToSuperview().inset(Appearance.titleLabelInsets.bottom)

        }

//        self.addConstraints([
//            NSLayoutConstraint.constraints(withVisualFormat: "|-[titleLabel]-|", options: [], metrics: nil, views: ["view": self])
////            NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 12),
////            NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 12)
//
//            ])
    }
    static var defaultHeight: CGFloat {
        return 60
    }
}

extension SettingsSectionHeaderView {
    private struct Appearance {

        static let titleLabelInsets: UIEdgeInsets = UIEdgeInsets(top: 20, left: 16, bottom: 10, right: 16)
        static let titleTopBottomMargin: CGFloat = 18

    }
}
