//
//  SharedMediaGallerySectionHeader.swift
//  Audiobook
//
//  Created by Олег Лейзер on 26/11/2018.
//  Copyright © 2018 Олег Лейзер. All rights reserved.
//

import UIKit

class SharedMediaGallerySectionHeader: UICollectionReusableView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = #colorLiteral(red: 0.2588235294, green: 0.3098039216, blue: 0.3607843137, alpha: 1)
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.text = "section".uppercased()
        label.textAlignment = .left
        return label
    }()
    private lazy var countLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = #colorLiteral(red: 0.3882352941, green: 0.4509803922, blue: 0.5058823529, alpha: 1)
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.text = "media (8)".uppercased()
        label.textAlignment = .right
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    private func setupView() {
//        backgroundColor = .clear

        addSubview(titleLabel)
        addSubview(countLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
            make.trailing.lessThanOrEqualTo(countLabel.snp.leading)
        }
        countLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()

        }
    }
    func configure(with date: String) {
        titleLabel.text = date
        countLabel.text = "(8) media"
    }
}
