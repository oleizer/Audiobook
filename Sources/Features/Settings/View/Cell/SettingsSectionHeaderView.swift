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
        label.textColor = #colorLiteral(red: 0.6, green: 0.6039215686, blue: 0.6078431373, alpha: 1)
        label.text = "Справка".uppercased()
        label.font = UIFont.preferredFont(forTextStyle: .headline)
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
        contentView.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9843137255, blue: 0.9882352941, alpha: 1)
//        contentView.backgroundColor = .blue
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
        return 45
    }
}

extension SettingsSectionHeaderView {
    private struct Appearance {

        static let titleLabelInsets: UIEdgeInsets = UIEdgeInsets(top: 20, left: 16, bottom: 10, right: 16)
        static let titleTopBottomMargin: CGFloat = 18

    }
}
